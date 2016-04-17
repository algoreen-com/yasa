require "rails_helper"

RSpec.describe ProductAttributesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_attributes").to route_to("product_attributes#index")
    end

    it "routes to #new" do
      expect(:get => "/product_attributes/new").to route_to("product_attributes#new")
    end

    it "routes to #show" do
      expect(:get => "/product_attributes/1").to route_to("product_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_attributes/1/edit").to route_to("product_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_attributes").to route_to("product_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product_attributes/1").to route_to("product_attributes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product_attributes/1").to route_to("product_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_attributes/1").to route_to("product_attributes#destroy", :id => "1")
    end

  end
end
