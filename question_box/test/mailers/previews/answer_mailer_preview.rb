# Preview all emails at http://localhost:3000/rails/mailers/answer_mailer
class AnswerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/answer_mailer/new_answer
  def new_answer
    AnswerMailer.new_answer(Answer.last.question)
  end

end
