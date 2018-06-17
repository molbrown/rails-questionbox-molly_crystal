require 'rails_helper'

RSpec.describe Question, type: :model do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:answers) }

    it 'has a valid factory' do
        factory = FactoryBot.create(:question)
        expect(factory).to be_valid
        expect(factory).to be_persisted
      end

end