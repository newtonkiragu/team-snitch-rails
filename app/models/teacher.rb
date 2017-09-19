class Teacher < ApplicationRecord
  has_and_belongs_to_many :subjects
  mount_uploader :picture, PictureUploader
  has_many :teacher_attachments
  has_and_belongs_to_many :streams
  accepts_nested_attributes_for :teacher_attachments
end
