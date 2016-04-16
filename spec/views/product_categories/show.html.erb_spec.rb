require 'rails_helper'

RSpec.describe "product_categories/show", type: :view do
  before(:each) do
    @product_category = assign(:product_category, ProductCategory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
