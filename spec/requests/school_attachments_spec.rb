require 'rails_helper'

RSpec.describe "SchoolAttachments", type: :request do
  describe "GET /school_attachments" do
    it "works! (now write some real specs)" do
      get school_attachments_path
      expect(response).to have_http_status(200)
    end
  end
end
