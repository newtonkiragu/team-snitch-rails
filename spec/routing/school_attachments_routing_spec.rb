require "rails_helper"

RSpec.describe SchoolAttachmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/school_attachments").to route_to("school_attachments#index")
    end

    it "routes to #new" do
      expect(:get => "/school_attachments/new").to route_to("school_attachments#new")
    end

    it "routes to #show" do
      expect(:get => "/school_attachments/1").to route_to("school_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/school_attachments/1/edit").to route_to("school_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/school_attachments").to route_to("school_attachments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/school_attachments/1").to route_to("school_attachments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/school_attachments/1").to route_to("school_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/school_attachments/1").to route_to("school_attachments#destroy", :id => "1")
    end

  end
end
