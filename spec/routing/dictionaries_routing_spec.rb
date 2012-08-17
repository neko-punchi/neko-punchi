require "spec_helper"

describe DictionariesController do
  describe "routing" do

    it "routes to #index" do
      get("/dictionaries").should route_to("dictionaries#index")
    end

    it "routes to #new" do
      get("/dictionaries/new").should route_to("dictionaries#new")
    end

    it "routes to #show" do
      get("/dictionaries/1").should route_to("dictionaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dictionaries/1/edit").should route_to("dictionaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dictionaries").should route_to("dictionaries#create")
    end

    it "routes to #update" do
      put("/dictionaries/1").should route_to("dictionaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dictionaries/1").should route_to("dictionaries#destroy", :id => "1")
    end

  end
end
