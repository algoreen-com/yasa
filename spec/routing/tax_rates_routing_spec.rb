require "rails_helper"

RSpec.describe TaxRatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tax_rates").to route_to("tax_rates#index")
    end

    it "routes to #new" do
      expect(:get => "/tax_rates/new").to route_to("tax_rates#new")
    end

    it "routes to #show" do
      expect(:get => "/tax_rates/1").to route_to("tax_rates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tax_rates/1/edit").to route_to("tax_rates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tax_rates").to route_to("tax_rates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tax_rates/1").to route_to("tax_rates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tax_rates/1").to route_to("tax_rates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tax_rates/1").to route_to("tax_rates#destroy", :id => "1")
    end

  end
end
