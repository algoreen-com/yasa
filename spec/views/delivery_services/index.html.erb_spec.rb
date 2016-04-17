require 'rails_helper'

RSpec.describe "delivery_services/index", type: :view do
  before(:each) do
    assign(:delivery_services, [
      DeliveryService.create!(),
      DeliveryService.create!()
    ])
  end

  it "renders a list of delivery_services" do
    render
  end
end
