require 'rails_helper'

RSpec.describe "teacher_attachments/edit", type: :view do
  before(:each) do
    @teacher_attachment = assign(:teacher_attachment, TeacherAttachment.create!(
      :teacher_id => 1,
      :avatar => "MyString"
    ))
  end

  it "renders the edit teacher_attachment form" do
    render

    assert_select "form[action=?][method=?]", teacher_attachment_path(@teacher_attachment), "post" do

      assert_select "input[name=?]", "teacher_attachment[teacher_id]"

      assert_select "input[name=?]", "teacher_attachment[avatar]"
    end
  end
end
