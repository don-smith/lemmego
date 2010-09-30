require 'spec_helper'

describe ProfileController do

  describe "GET 'show'" do
    it "should be successful" do
      sign_in Factory(:user)
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

end
