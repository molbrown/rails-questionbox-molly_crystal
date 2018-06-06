require 'test_helper'

class QuestionMailerTest < ActionMailer::TestCase
  test "answer" do
    mail = QuestionMailer.answer
    assert_equal "Answer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
