require 'rails_helper'

RSpec.describe "product_attributes/new", type: :view do
  before(:each) do
    assign(:product_attribute, ProductAttribute.new())
  end

  it "renders new product_attribute form" do
    render

    assert_select "form[action=?][method=?]", product_attributes_path, "post" do
    end
  end
end
