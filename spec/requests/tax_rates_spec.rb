require 'rails_helper'

RSpec.describe "TaxRates", type: :request do
  describe "GET /tax_rates" do
    it "works! (now write some real specs)" do
      get tax_rates_path
      expect(response).to have_http_status(200)
    end
  end
end
