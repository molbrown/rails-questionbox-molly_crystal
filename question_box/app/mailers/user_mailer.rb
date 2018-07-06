class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.weekly_summary.subject
  #
  def weekly_summary(user)
    @user = user
    @questions = @user.questions.weekly_q(Date.today - 7)
    @answers = @user.answers.weekly_a(Date.today - 7)


    mail(
      to: @user.email_address,
      from: "admin@codeinterview.com",
      subject: "Your code{interview} activity"
    )
  end
end
