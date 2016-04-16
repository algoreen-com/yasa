require 'rails_helper'

RSpec.describe "delivery_services/new", type: :view do
  before(:each) do
    assign(:delivery_service, DeliveryService.new())
  end

  it "renders new delivery_service form" do
    render

    assert_select "form[action=?][method=?]", delivery_services_path, "post" do
    end
  end
end
