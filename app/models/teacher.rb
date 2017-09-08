class Teacher < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :teacher_attachments
  accepts_nested_attributes_for :teacher_attachments
end
