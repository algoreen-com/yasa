require 'rails_helper'

RSpec.describe "product_categorizations/show", type: :view do
  before(:each) do
    @product_categorization = assign(:product_categorization, ProductCategorization.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
