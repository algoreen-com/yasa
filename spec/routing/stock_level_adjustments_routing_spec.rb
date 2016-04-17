require "rails_helper"

RSpec.describe StockLevelAdjustmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stock_level_adjustments").to route_to("stock_level_adjustments#index")
    end

    it "routes to #new" do
      expect(:get => "/stock_level_adjustments/new").to route_to("stock_level_adjustments#new")
    end

    it "routes to #show" do
      expect(:get => "/stock_level_adjustments/1").to route_to("stock_level_adjustments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stock_level_adjustments/1/edit").to route_to("stock_level_adjustments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stock_level_adjustments").to route_to("stock_level_adjustments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_level_adjustments/1").to route_to("stock_level_adjustments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_level_adjustments/1").to route_to("stock_level_adjustments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_level_adjustments/1").to route_to("stock_level_adjustments#destroy", :id => "1")
    end

  end
end
