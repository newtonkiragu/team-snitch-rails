require 'rails_helper'

RSpec.describe "teacher_attachments/index", type: :view do
  before(:each) do
    assign(:teacher_attachments, [
      TeacherAttachment.create!(
        :teacher_id => 2,
        :avatar => "Avatar"
      ),
      TeacherAttachment.create!(
        :teacher_id => 2,
        :avatar => "Avatar"
      )
    ])
  end

  it "renders a list of teacher_attachments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
  end
end
