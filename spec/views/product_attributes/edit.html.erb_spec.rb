require 'rails_helper'

RSpec.describe "product_attributes/edit", type: :view do
  before(:each) do
    @product_attribute = assign(:product_attribute, ProductAttribute.create!())
  end

  it "renders the edit product_attribute form" do
    render

    assert_select "form[action=?][method=?]", product_attribute_path(@product_attribute), "post" do
    end
  end
end
