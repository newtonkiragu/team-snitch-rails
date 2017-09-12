class Teacher < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :subjects, through: :Subject_teacher
end
