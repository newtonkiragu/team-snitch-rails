require "rails_helper"

RSpec.describe TeacherAttachmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/teacher_attachments").to route_to("teacher_attachments#index")
    end

    it "routes to #new" do
      expect(:get => "/teacher_attachments/new").to route_to("teacher_attachments#new")
    end

    it "routes to #show" do
      expect(:get => "/teacher_attachments/1").to route_to("teacher_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/teacher_attachments/1/edit").to route_to("teacher_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/teacher_attachments").to route_to("teacher_attachments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/teacher_attachments/1").to route_to("teacher_attachments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/teacher_attachments/1").to route_to("teacher_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/teacher_attachments/1").to route_to("teacher_attachments#destroy", :id => "1")
    end

  end
end
