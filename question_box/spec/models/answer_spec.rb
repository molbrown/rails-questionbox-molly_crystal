require 'rails_helper'

RSpec.describe Answer, type: :model do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:question) }

    it 'has a valid factory' do
        factory = FactoryBot.create(:answer)
        expect(factory).to be_valid
        expect(factory).to be_persisted
      end

end