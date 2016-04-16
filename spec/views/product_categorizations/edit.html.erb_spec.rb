require 'rails_helper'

RSpec.describe "product_categorizations/edit", type: :view do
  before(:each) do
    @product_categorization = assign(:product_categorization, ProductCategorization.create!())
  end

  it "renders the edit product_categorization form" do
    render

    assert_select "form[action=?][method=?]", product_categorization_path(@product_categorization), "post" do
    end
  end
end
