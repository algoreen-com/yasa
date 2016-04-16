require 'rails_helper'

RSpec.describe "delivery_service_prices/index", type: :view do
  before(:each) do
    assign(:delivery_service_prices, [
      DeliveryServicePrice.create!(),
      DeliveryServicePrice.create!()
    ])
  end

  it "renders a list of delivery_service_prices" do
    render
  end
end
