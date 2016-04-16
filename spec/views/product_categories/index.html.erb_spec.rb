require 'rails_helper'

RSpec.describe "product_categories/index", type: :view do
  before(:each) do
    assign(:product_categories, [
      ProductCategory.create!(),
      ProductCategory.create!()
    ])
  end

  it "renders a list of product_categories" do
    render
  end
end
