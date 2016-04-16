require 'rails_helper'

RSpec.describe "product_categorizations/new", type: :view do
  before(:each) do
    assign(:product_categorization, ProductCategorization.new())
  end

  it "renders new product_categorization form" do
    render

    assert_select "form[action=?][method=?]", product_categorizations_path, "post" do
    end
  end
end
