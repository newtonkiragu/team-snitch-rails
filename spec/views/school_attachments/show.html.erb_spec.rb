require 'rails_helper'

RSpec.describe "school_attachments/show", type: :view do
  before(:each) do
    @school_attachment = assign(:school_attachment, SchoolAttachment.create!(
      :school_id => 2,
      :avatar => "Avatar"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Avatar/)
  end
end
