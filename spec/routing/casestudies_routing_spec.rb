require "spec_helper"

describe CasestudiesController do
  describe "routing" do

    it "routes to #index" do
      get("/casestudies").should route_to("casestudies#index")
    end

    it "routes to #new" do
      get("/casestudies/new").should route_to("casestudies#new")
    end

    it "routes to #show" do
      get("/casestudies/1").should route_to("casestudies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/casestudies/1/edit").should route_to("casestudies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/casestudies").should route_to("casestudies#create")
    end

    it "routes to #update" do
      put("/casestudies/1").should route_to("casestudies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/casestudies/1").should route_to("casestudies#destroy", :id => "1")
    end

  end
end
