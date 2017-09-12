require 'rails_helper'

RSpec.describe "streams/edit", type: :view do
  before(:each) do
    @stream = assign(:stream, Stream.create!(
      :level => 1,
      :stream => "MyString"
    ))
  end

  it "renders the edit stream form" do
    render

    assert_select "form[action=?][method=?]", stream_path(@stream), "post" do

      assert_select "input[name=?]", "stream[level]"

      assert_select "input[name=?]", "stream[stream]"
    end
  end
end
