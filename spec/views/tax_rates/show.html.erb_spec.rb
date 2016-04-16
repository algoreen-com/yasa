require 'rails_helper'

RSpec.describe "tax_rates/show", type: :view do
  before(:each) do
    @tax_rate = assign(:tax_rate, TaxRate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
