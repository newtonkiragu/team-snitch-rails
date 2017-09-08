require 'rails_helper'

RSpec.describe "school_attachments/new", type: :view do
  before(:each) do
    assign(:school_attachment, SchoolAttachment.new(
      :school_id => 1,
      :avatar => "MyString"
    ))
  end

  it "renders new school_attachment form" do
    render

    assert_select "form[action=?][method=?]", school_attachments_path, "post" do

      assert_select "input[name=?]", "school_attachment[school_id]"

      assert_select "input[name=?]", "school_attachment[avatar]"
    end
  end
end
