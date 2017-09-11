require 'rails_helper'

RSpec.describe "streams/new", type: :view do
  before(:each) do
    assign(:stream, Stream.new(
      :level => 1,
      :stream => "MyString"
    ))
  end

  it "renders new stream form" do
    render

    assert_select "form[action=?][method=?]", streams_path, "post" do

      assert_select "input[name=?]", "stream[level]"

      assert_select "input[name=?]", "stream[stream]"
    end
  end
end
