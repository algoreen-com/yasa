require 'rails_helper'

RSpec.describe "product_categorizations/index", type: :view do
  before(:each) do
    assign(:product_categorizations, [
      ProductCategorization.create!(),
      ProductCategorization.create!()
    ])
  end

  it "renders a list of product_categorizations" do
    render
  end
end
