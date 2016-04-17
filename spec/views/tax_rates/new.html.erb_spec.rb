require 'rails_helper'

RSpec.describe "tax_rates/new", type: :view do
  before(:each) do
    assign(:tax_rate, TaxRate.new())
  end

  it "renders new tax_rate form" do
    render

    assert_select "form[action=?][method=?]", tax_rates_path, "post" do
    end
  end
end
