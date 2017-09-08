class School < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :school_attachments
 accepts_nested_attributes_for :school_attachments
end
