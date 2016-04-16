require 'rails_helper'

RSpec.describe "stock_level_adjustments/edit", type: :view do
  before(:each) do
    @stock_level_adjustment = assign(:stock_level_adjustment, StockLevelAdjustment.create!())
  end

  it "renders the edit stock_level_adjustment form" do
    render

    assert_select "form[action=?][method=?]", stock_level_adjustment_path(@stock_level_adjustment), "post" do
    end
  end
end
