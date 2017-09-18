class Teacher < ApplicationRecord
  has_many :subject_teachers
  has_many :subjects, through: :subject_teachers
  mount_uploader :picture, PictureUploader
  has_many :teacher_attachments
  belongs_to :stream
  accepts_nested_attributes_for :teacher_attachments
end
