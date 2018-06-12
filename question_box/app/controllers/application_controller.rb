class ApplicationController < ActionController::Base
    include ActionController::HttpAuthentication::Token::ControllerMethods
    include ActionController::MimeResponds
    before_action :verify_authentication, if: proc { request.xhr? }
    helper_method :current_user
    protect_from_forgery with: :null_session
    

    def current_user    
        if session[:user_id]
            @c_user ||= User.find(session[:user_id])
        else
            @c_user ||= User.find_by(api_token: bearer_token)
        end
        return @c_user
    end
    
    def bearer_token
        pattern = /^Bearer /
        header  = request.headers['Authorization']
        header.gsub(pattern, '') if header && header.match(pattern)
    end
    
    def verify_authentication
        user = authenticate_with_http_token do |token, options|
            User.find_by(api_token: token)
        end
            
        unless user
            render json: { error: "You do not have permission to access these resources" }, status: :unauthorized
        end
    end

end
