require 'rails_helper'

RSpec.describe "delivery_services/show", type: :view do
  before(:each) do
    @delivery_service = assign(:delivery_service, DeliveryService.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
