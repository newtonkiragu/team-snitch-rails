require 'rails_helper'

RSpec.describe "streams/show", type: :view do
  before(:each) do
    @stream = assign(:stream, Stream.create!(
      :level => 2,
      :stream => "Stream"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Stream/)
  end
end
