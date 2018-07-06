require 'rails_helper'

RSpec.describe User, type: :model do
    it { is_expected.to have_many(:questions) }
    it { is_expected.to have_many(:answers) }

    describe ".admin" do
        let(:user) { FactoryBot.create(:user) }

        context "Default user" do
            it "returns false" do
                expect(user.admin).to eq(false)
            end
        end

        context "Admin user" do
            let(:adminuser) { FactoryBot.create(:user, admin: true)}
            it "returns true" do
                expect(adminuser.admin).to eq(true)
            end
        end
    end

end