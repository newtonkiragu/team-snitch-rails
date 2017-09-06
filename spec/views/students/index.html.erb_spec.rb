require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :level => 2,
        :stream => "Stream",
        :fee => 3,
        :dormitory => "Dormitory",
        :clubs => "Clubs"
      ),
      Student.create!(
        :name => "Name",
        :level => 2,
        :stream => "Stream",
        :fee => 3,
        :dormitory => "Dormitory",
        :clubs => "Clubs"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Stream".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Dormitory".to_s, :count => 2
    assert_select "tr>td", :text => "Clubs".to_s, :count => 2
  end
end
