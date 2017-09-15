require 'rails_helper'

RSpec.describe "levels/show", type: :view do
  before(:each) do
    @level = assign(:level, Level.create!(
      :level => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
