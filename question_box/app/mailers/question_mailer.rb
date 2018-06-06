class QuestionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question_mailer.answer.subject
  #
  def answer(question)
    @question = question
    @user = @question.user

    @greeting = "Hi #{@user.username}!" 
    @qurl = question_url(@question.id, host: 'localhost:3000')
    
    mail(
        to: @user.email,
        from: "admin@codeinterview.com",
        subject: "You've Got Answers"
      )
  end

end
