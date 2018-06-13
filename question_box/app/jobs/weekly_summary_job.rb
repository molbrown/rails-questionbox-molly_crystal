class WeeklySummaryJob < ActiveJob::Base
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    UserMailer.weekly_summary(user).deliver_now
  end
end
