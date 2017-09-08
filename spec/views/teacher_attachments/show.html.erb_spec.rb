require 'rails_helper'

RSpec.describe "teacher_attachments/show", type: :view do
  before(:each) do
    @teacher_attachment = assign(:teacher_attachment, TeacherAttachment.create!(
      :teacher_id => 2,
      :avatar => "Avatar"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Avatar/)
  end
end
