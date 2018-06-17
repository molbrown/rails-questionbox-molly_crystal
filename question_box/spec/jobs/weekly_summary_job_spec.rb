require "rails_helper"

RSpec.describe WeeklySummaryJob, type: :job do
    ActiveJob::Base.queue_adapter = :test
    let!(:jobusers) { FactoryBot.create_list(:user, 4) }

    it 'queues jobs' do
        expect {
            WeeklySummaryJob.perform_later
        }.to have_enqueued_job
    end

end