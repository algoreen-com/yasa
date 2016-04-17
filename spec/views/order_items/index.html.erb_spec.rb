require 'rails_helper'

RSpec.describe "order_items/index", type: :view do
  before(:each) do
    assign(:order_items, [
      OrderItem.create!(),
      OrderItem.create!()
    ])
  end

  it "renders a list of order_items" do
    render
  end
end
