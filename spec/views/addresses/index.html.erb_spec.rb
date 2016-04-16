require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(),
      Address.create!()
    ])
  end

  it "renders a list of addresses" do
    render
  end
end
