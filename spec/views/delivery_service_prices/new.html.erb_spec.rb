require 'rails_helper'

RSpec.describe "delivery_service_prices/new", type: :view do
  before(:each) do
    assign(:delivery_service_price, DeliveryServicePrice.new())
  end

  it "renders new delivery_service_price form" do
    render

    assert_select "form[action=?][method=?]", delivery_service_prices_path, "post" do
    end
  end
end
