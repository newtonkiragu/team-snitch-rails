class Student < ApplicationRecord
  has_many :grades
  validates :subject_ids, presence: true
  has_many :parents
  has_and_belongs_to_many :subjects
  belongs_to :stream
  belongs_to :level
  mount_uploader :picture, PictureUploader
end
