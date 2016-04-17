require 'rails_helper'

RSpec.describe "delivery_service_prices/show", type: :view do
  before(:each) do
    @delivery_service_price = assign(:delivery_service_price, DeliveryServicePrice.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
