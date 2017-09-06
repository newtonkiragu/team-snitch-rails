require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :level => 2,
      :stream => "Stream",
      :fee => 3,
      :dormitory => "Dormitory",
      :clubs => "Clubs"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Stream/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Dormitory/)
    expect(rendered).to match(/Clubs/)
  end
end
