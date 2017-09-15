class Level < ApplicationRecord
  has_many :streams
  has_many :students
  has_many :assignments
end
