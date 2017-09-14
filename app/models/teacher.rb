class Teacher < ApplicationRecord
<<<<<<< HEAD
  mount_uploader :picture, PictureUploader
  has_many :subjects, through: :Subject_teacher
=======
  # mount_uploader :picture, PictureUploader
  has_many :subject_teachers
  has_many :subjects, through: :subject_teachers
>>>>>>> f5890d947d844a6808f5f4a8526d3e497ccdfc2f
end
