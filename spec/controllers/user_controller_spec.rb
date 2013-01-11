require 'spec_helper'

describe UserController do

  describe "GET 'show_nickname'" do
    it "returns http success" do
      get 'show_nickname'
      response.should be_success
    end
  end

  describe "GET 'change_nickname'" do
    it "returns http success" do
      get 'change_nickname'
      response.should be_success
    end
  end

end
