class Level < ApplicationRecord
  has_many :streams
  has_many :students
end
