class Student < ApplicationRecord
  has_many :parents
  mount_uploader :picture, PictureUploader
end
