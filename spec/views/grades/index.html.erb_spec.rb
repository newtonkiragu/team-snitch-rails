require 'rails_helper'

RSpec.describe "grades/index", type: :view do
  before(:each) do
    assign(:grades, [
      Grade.create!(
        :score => 2,
        :grade => "Grade"
      ),
      Grade.create!(
        :score => 2,
        :grade => "Grade"
      )
    ])
  end

  it "renders a list of grades" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
  end
end
