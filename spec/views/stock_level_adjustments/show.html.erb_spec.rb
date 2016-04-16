require 'rails_helper'

RSpec.describe "stock_level_adjustments/show", type: :view do
  before(:each) do
    @stock_level_adjustment = assign(:stock_level_adjustment, StockLevelAdjustment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
