require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :level => 1,
      :stream => "MyString",
      :fee => 1,
      :dormitory => "MyString",
      :clubs => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input[name=?]", "student[name]"

      assert_select "input[name=?]", "student[level]"

      assert_select "input[name=?]", "student[stream]"

      assert_select "input[name=?]", "student[fee]"

      assert_select "input[name=?]", "student[dormitory]"

      assert_select "input[name=?]", "student[clubs]"
    end
  end
end
