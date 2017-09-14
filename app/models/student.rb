class Student < ApplicationRecord
   validates :subject_ids, presence: true
  has_many :parents
  has_and_belongs_to_many :subjects
  belongs_to :stream
  mount_uploader :picture, PictureUploader
end
