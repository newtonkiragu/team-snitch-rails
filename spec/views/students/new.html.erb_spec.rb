require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :name => "MyString",
      :level => 1,
      :stream => "MyString",
      :fee => 1,
      :dormitory => "MyString",
      :clubs => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input[name=?]", "student[name]"

      assert_select "input[name=?]", "student[level]"

      assert_select "input[name=?]", "student[stream]"

      assert_select "input[name=?]", "student[fee]"

      assert_select "input[name=?]", "student[dormitory]"

      assert_select "input[name=?]", "student[clubs]"
    end
  end
end
