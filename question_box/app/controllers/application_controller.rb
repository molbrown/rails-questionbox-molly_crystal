class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user    
        if session[:user_id]
            @c_user ||= User.find(session[:user_id])
            return @c_user
        end
    end

end
