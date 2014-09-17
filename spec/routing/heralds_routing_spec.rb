require "rails_helper"

RSpec.describe HeraldsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/heralds").to route_to("heralds#index")
    end

    it "routes to #new" do
      expect(:get => "/heralds/new").to route_to("heralds#new")
    end

    it "routes to #show" do
      expect(:get => "/heralds/1").to route_to("heralds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/heralds/1/edit").to route_to("heralds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/heralds").to route_to("heralds#create")
    end

    it "routes to #update" do
      expect(:put => "/heralds/1").to route_to("heralds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/heralds/1").to route_to("heralds#destroy", :id => "1")
    end

  end
end
