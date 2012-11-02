require 'spec_helper'

describe StatsController do

  describe "GET 'your_records'" do
    it "returns http success" do
      get 'your_records'
      response.should be_success
    end
  end

  describe "GET 'statistics'" do
    it "returns http success" do
      get 'statistics'
      response.should be_success
    end
  end

end
