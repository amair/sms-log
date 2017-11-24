require "rails_helper"

RSpec.describe SmController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sm").to route_to("sm#index")
    end

    it "routes to #new" do
      expect(:get => "/sm/new").to route_to("sm#new")
    end

    it "routes to #show" do
      expect(:get => "/sm/1").to route_to("sm#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sm/1/edit").to route_to("sm#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sm").to route_to("sm#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sm/1").to route_to("sm#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sm/1").to route_to("sm#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sm/1").to route_to("sm#destroy", :id => "1")
    end

  end
end
