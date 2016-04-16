require 'rails_helper'

RSpec.describe "product_attributes/index", type: :view do
  before(:each) do
    assign(:product_attributes, [
      ProductAttribute.create!(),
      ProductAttribute.create!()
    ])
  end

  it "renders a list of product_attributes" do
    render
  end
end
