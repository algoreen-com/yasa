require 'rails_helper'

RSpec.describe "tax_rates/edit", type: :view do
  before(:each) do
    @tax_rate = assign(:tax_rate, TaxRate.create!())
  end

  it "renders the edit tax_rate form" do
    render

    assert_select "form[action=?][method=?]", tax_rate_path(@tax_rate), "post" do
    end
  end
end
