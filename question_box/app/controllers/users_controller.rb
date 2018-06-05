class UsersController < ApplicationController



    private


    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.permit(:username, :password)
    end

end
