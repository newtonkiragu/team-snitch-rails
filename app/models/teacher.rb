class Teacher < ApplicationRecord
  # mount_uploader :picture, PictureUploader
  has_many :subject_teachers
  has_many :subjects, through: :subject_teachers
end
