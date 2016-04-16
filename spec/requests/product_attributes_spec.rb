require 'rails_helper'

RSpec.describe "ProductAttributes", type: :request do
  describe "GET /product_attributes" do
    it "works! (now write some real specs)" do
      get product_attributes_path
      expect(response).to have_http_status(200)
    end
  end
end
