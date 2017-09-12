class Student < ApplicationRecord
  has_many :parents
  belongs_to :stream
  mount_uploader :picture, PictureUploader
end
