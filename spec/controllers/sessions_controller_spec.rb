require 'rails_helper'

RSpec.describe UserController, :type => :controller do
  user = FactoryGirl.create(:user)

  describe "#GET login" do
    it "should login correctly" do
      get :login
      debugger
    end
  end
end
