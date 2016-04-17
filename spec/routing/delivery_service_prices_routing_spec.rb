require "rails_helper"

RSpec.describe DeliveryServicePricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/delivery_service_prices").to route_to("delivery_service_prices#index")
    end

    it "routes to #new" do
      expect(:get => "/delivery_service_prices/new").to route_to("delivery_service_prices#new")
    end

    it "routes to #show" do
      expect(:get => "/delivery_service_prices/1").to route_to("delivery_service_prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/delivery_service_prices/1/edit").to route_to("delivery_service_prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/delivery_service_prices").to route_to("delivery_service_prices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/delivery_service_prices/1").to route_to("delivery_service_prices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/delivery_service_prices/1").to route_to("delivery_service_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/delivery_service_prices/1").to route_to("delivery_service_prices#destroy", :id => "1")
    end

  end
end
