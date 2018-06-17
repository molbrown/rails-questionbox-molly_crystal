require 'rails_helper'

RSpec.describe UserMailer, type: :mailer do
    describe 'weekly_summary' do
        let!(:myuser) { FactoryBot.create(:user) }
        let!(:newquestion) { FactoryBot.create(:question, user: myuser )}
        let!(:oldquestion) { FactoryBot.create(:question, user: myuser, created_at: 2018-06-07)}
        let!(:newanswer) { FactoryBot.create(:answer, user: myuser, question: newquestion )}
        let!(:oldanswer) { FactoryBot.create(:answer, user: myuser, question: oldquestion, created_at: 2018-06-07)}
        let!(:mail) { described_class.weekly_summary(myuser).deliver_now }
    
        it 'renders the subject' do
            expect(mail.subject).to eq("Your code{interview} activity")
        end
    
        it 'renders the receiver email' do
            expect(mail.to).to eq([myuser.email_address])
        end
    
        it 'renders the sender email' do
            expect(mail.from).to eq(["admin@codeinterview.com"])
        end
    
        it 'assigns @user' do
            expect(mail.body.encoded).to match(myuser.username)
        end
    
        it 'assigns @questions' do
            expect(mail.body.encoded)
                .to match(newquestion.title)
        end

        it 'assigns @answers' do
            expect(mail.body.encoded)
                .to match(newanswer.text)
        end

    end
end