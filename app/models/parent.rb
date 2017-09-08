class Parent < ApplicationRecord
  belongs_to :student
  mount_uploader :picture, PictureUploader
end
