class AnswerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.answer_mailer.new_answer.subject
  #
  def new_answer(question)
      @question = question
      @user = @question.user
  
      @greeting = "Hi #{@user.username}!" 
      @qurl = question_url(@question.id, host: 'localhost:3000')
      
      mail(
          to: @user.email_address,
          from: "admin@codeinterview.com",
          subject: "You've Got Answers"
        )
    end
  end