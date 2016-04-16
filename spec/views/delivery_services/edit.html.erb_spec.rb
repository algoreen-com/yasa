require 'rails_helper'

RSpec.describe "delivery_services/edit", type: :view do
  before(:each) do
    @delivery_service = assign(:delivery_service, DeliveryService.create!())
  end

  it "renders the edit delivery_service form" do
    render

    assert_select "form[action=?][method=?]", delivery_service_path(@delivery_service), "post" do
    end
  end
end
