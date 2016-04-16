require 'rails_helper'

RSpec.describe "ProductCategorizations", type: :request do
  describe "GET /product_categorizations" do
    it "works! (now write some real specs)" do
      get product_categorizations_path
      expect(response).to have_http_status(200)
    end
  end
end
