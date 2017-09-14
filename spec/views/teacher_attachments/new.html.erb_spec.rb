require 'rails_helper'

RSpec.describe "teacher_attachments/new", type: :view do
  before(:each) do
    assign(:teacher_attachment, TeacherAttachment.new(
      :teacher_id => 1,
      :avatar => "MyString"
    ))
  end

  it "renders new teacher_attachment form" do
    render

    assert_select "form[action=?][method=?]", teacher_attachments_path, "post" do

      assert_select "input[name=?]", "teacher_attachment[teacher_id]"

      assert_select "input[name=?]", "teacher_attachment[avatar]"
    end
  end
end
