require 'rails_helper'

RSpec.describe "product_categories/edit", type: :view do
  before(:each) do
    @product_category = assign(:product_category, ProductCategory.create!())
  end

  it "renders the edit product_category form" do
    render

    assert_select "form[action=?][method=?]", product_category_path(@product_category), "post" do
    end
  end
end
