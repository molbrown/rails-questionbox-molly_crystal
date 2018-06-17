class WeeklySummaryJob < ActiveJob::Base
  queue_as :default

  def perform
    users = User.all
    
    users.each do |user|
      UserMailer.weekly_summary(user).deliver_now 
    end
  end
end
