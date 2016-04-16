require 'rails_helper'

RSpec.describe "stock_level_adjustments/new", type: :view do
  before(:each) do
    assign(:stock_level_adjustment, StockLevelAdjustment.new())
  end

  it "renders new stock_level_adjustment form" do
    render

    assert_select "form[action=?][method=?]", stock_level_adjustments_path, "post" do
    end
  end
end
