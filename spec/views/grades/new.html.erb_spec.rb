require 'rails_helper'

RSpec.describe "grades/new", type: :view do
  before(:each) do
    assign(:grade, Grade.new(
      :score => 1,
      :grade => "MyString"
    ))
  end

  it "renders new grade form" do
    render

    assert_select "form[action=?][method=?]", grades_path, "post" do

      assert_select "input[name=?]", "grade[score]"

      assert_select "input[name=?]", "grade[grade]"
    end
  end
end
