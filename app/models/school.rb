class School < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :documents
  attr_accessor :document_data
end
