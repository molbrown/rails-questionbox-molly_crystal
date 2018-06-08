# @user = User.find(params[:id])
# @questions = @user.questions.all.page params[:page]
# @answers = @user.answers.all.page params[:page]


json.data do
    json.id @user.id
    json.attributes do
        json.id @user.id
        json.username @user.username
        json.email_address @user.email_address
        json.api_token @user.api_token
        json.questions @questions 
        json.answers @answers
    end
end