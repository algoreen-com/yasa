require 'rails_helper'

RSpec.describe "attachments/show", type: :view do
  before(:each) do
    @attachment = assign(:attachment, Attachment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
