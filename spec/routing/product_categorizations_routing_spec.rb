require "rails_helper"

RSpec.describe ProductCategorizationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_categorizations").to route_to("product_categorizations#index")
    end

    it "routes to #new" do
      expect(:get => "/product_categorizations/new").to route_to("product_categorizations#new")
    end

    it "routes to #show" do
      expect(:get => "/product_categorizations/1").to route_to("product_categorizations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_categorizations/1/edit").to route_to("product_categorizations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_categorizations").to route_to("product_categorizations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product_categorizations/1").to route_to("product_categorizations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product_categorizations/1").to route_to("product_categorizations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_categorizations/1").to route_to("product_categorizations#destroy", :id => "1")
    end

  end
end
