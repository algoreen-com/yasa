require 'rails_helper'

RSpec.describe "delivery_service_prices/edit", type: :view do
  before(:each) do
    @delivery_service_price = assign(:delivery_service_price, DeliveryServicePrice.create!())
  end

  it "renders the edit delivery_service_price form" do
    render

    assert_select "form[action=?][method=?]", delivery_service_price_path(@delivery_service_price), "post" do
    end
  end
end
