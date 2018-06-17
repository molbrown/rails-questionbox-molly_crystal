require "rails_helper"

RSpec.describe ApplicationController, type: :routing do
  describe "Basic application routing" do

    it "routes to #index" do
      expect(:get => "/").to route_to("questions#index")
    end

    it "routes to login" do
      expect(:get => "/login").to route_to("logins#new")
    end

    it "routes to logout" do
      expect(:get => "/logout").to route_to("logins#destroy")
    end

#     it "routes to user log in" do
#       expect(:get => "/login").to route_to("devise/sessions#new")
#     end

#     it "routes to user edit" do
#       expect(:get => "/settings").to route_to("devise/registrations#edit")
#     end

#     it "routes to user logout" do
#       expect(:delete => "/logout").to route_to("devise/sessions#destroy")
#     end
  end
end