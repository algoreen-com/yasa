require "rails_helper"

RSpec.describe DeliveryServicesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/delivery_services").to route_to("delivery_services#index")
    end

    it "routes to #new" do
      expect(:get => "/delivery_services/new").to route_to("delivery_services#new")
    end

    it "routes to #show" do
      expect(:get => "/delivery_services/1").to route_to("delivery_services#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/delivery_services/1/edit").to route_to("delivery_services#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/delivery_services").to route_to("delivery_services#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/delivery_services/1").to route_to("delivery_services#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/delivery_services/1").to route_to("delivery_services#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/delivery_services/1").to route_to("delivery_services#destroy", :id => "1")
    end

  end
end
