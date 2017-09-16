require 'rails_helper'

RSpec.describe "levels/index", type: :view do
  before(:each) do
    assign(:levels, [
      Level.create!(
        :level => 2
      ),
      Level.create!(
        :level => 2
      )
    ])
  end

  it "renders a list of levels" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
