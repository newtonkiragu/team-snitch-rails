require 'rails_helper'

RSpec.describe "streams/index", type: :view do
  before(:each) do
    assign(:streams, [
      Stream.create!(
        :level => 2,
        :stream => "Stream"
      ),
      Stream.create!(
        :level => 2,
        :stream => "Stream"
      )
    ])
  end

  it "renders a list of streams" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Stream".to_s, :count => 2
  end
end
