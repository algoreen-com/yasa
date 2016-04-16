require 'rails_helper'

RSpec.describe "product_categories/new", type: :view do
  before(:each) do
    assign(:product_category, ProductCategory.new())
  end

  it "renders new product_category form" do
    render

    assert_select "form[action=?][method=?]", product_categories_path, "post" do
    end
  end
end
