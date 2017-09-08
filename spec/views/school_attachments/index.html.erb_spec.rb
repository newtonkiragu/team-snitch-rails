require 'rails_helper'

RSpec.describe "school_attachments/index", type: :view do
  before(:each) do
    assign(:school_attachments, [
      SchoolAttachment.create!(
        :school_id => 2,
        :avatar => "Avatar"
      ),
      SchoolAttachment.create!(
        :school_id => 2,
        :avatar => "Avatar"
      )
    ])
  end

  it "renders a list of school_attachments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
  end
end
