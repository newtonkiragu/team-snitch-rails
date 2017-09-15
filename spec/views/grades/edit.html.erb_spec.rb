require 'rails_helper'

RSpec.describe "grades/edit", type: :view do
  before(:each) do
    @grade = assign(:grade, Grade.create!(
      :score => 1,
      :grade => "MyString"
    ))
  end

  it "renders the edit grade form" do
    render

    assert_select "form[action=?][method=?]", grade_path(@grade), "post" do

      assert_select "input[name=?]", "grade[score]"

      assert_select "input[name=?]", "grade[grade]"
    end
  end
end
