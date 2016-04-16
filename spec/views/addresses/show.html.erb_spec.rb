require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
