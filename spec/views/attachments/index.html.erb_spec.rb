require 'rails_helper'

RSpec.describe "attachments/index", type: :view do
  before(:each) do
    assign(:attachments, [
      Attachment.create!(),
      Attachment.create!()
    ])
  end

  it "renders a list of attachments" do
    render
  end
end
