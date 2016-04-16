require 'rails_helper'

RSpec.describe "StockLevelAdjustments", type: :request do
  describe "GET /stock_level_adjustments" do
    it "works! (now write some real specs)" do
      get stock_level_adjustments_path
      expect(response).to have_http_status(200)
    end
  end
end
