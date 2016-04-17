require 'rails_helper'

RSpec.describe "tax_rates/index", type: :view do
  before(:each) do
    assign(:tax_rates, [
      TaxRate.create!(),
      TaxRate.create!()
    ])
  end

  it "renders a list of tax_rates" do
    render
  end
end
