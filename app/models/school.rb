class School < ApplicationRecord
  mount_uploader :picture, LogoUploader
  has_many :documents
  attr_accessor :document_data
end
