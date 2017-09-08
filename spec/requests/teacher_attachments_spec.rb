require 'rails_helper'

RSpec.describe "TeacherAttachments", type: :request do
  describe "GET /teacher_attachments" do
    it "works! (now write some real specs)" do
      get teacher_attachments_path
      expect(response).to have_http_status(200)
    end
  end
end
