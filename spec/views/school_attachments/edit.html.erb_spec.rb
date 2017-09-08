require 'rails_helper'

RSpec.describe "school_attachments/edit", type: :view do
  before(:each) do
    @school_attachment = assign(:school_attachment, SchoolAttachment.create!(
      :school_id => 1,
      :avatar => "MyString"
    ))
  end

  it "renders the edit school_attachment form" do
    render

    assert_select "form[action=?][method=?]", school_attachment_path(@school_attachment), "post" do

      assert_select "input[name=?]", "school_attachment[school_id]"

      assert_select "input[name=?]", "school_attachment[avatar]"
    end
  end
end
