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
        json.questions do 
            json.total_questions @user.questions.count
            json.questions_per_page @questions.count
            json.total_pages @questions.page.total_pages
            json.next path_to_next_page @questions
            json.questions @questions
        end
        json.answers do 
            json.total_answers @user.answers.count
            json.answers_per_page @answers.count
            json.total_pages @answers.page.total_pages
            json.next path_to_next_page @answers
            json.answers @answers
        
        end
    end
end