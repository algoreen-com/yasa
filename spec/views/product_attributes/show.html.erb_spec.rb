require 'rails_helper'

RSpec.describe "product_attributes/show", type: :view do
  before(:each) do
    @product_attribute = assign(:product_attribute, ProductAttribute.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
