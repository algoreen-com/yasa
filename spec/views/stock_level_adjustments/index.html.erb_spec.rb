require 'rails_helper'

RSpec.describe "stock_level_adjustments/index", type: :view do
  before(:each) do
    assign(:stock_level_adjustments, [
      StockLevelAdjustment.create!(),
      StockLevelAdjustment.create!()
    ])
  end

  it "renders a list of stock_level_adjustments" do
    render
  end
end
