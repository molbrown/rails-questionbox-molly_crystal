class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_login_path, notice: "Your username was created successfully. Please login."
        else
            redirect_to new_user_path, alert: "Please enter a username and password."
        end
    end

    def index 
        @myquestions = current_user.questions.all.page params[:page]
    end
    
    def show
        @user = User.find(params[:id])
        @questions = @user.questions.all.page params[:page]
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :email_address)
    end


end
