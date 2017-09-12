class Subject < ApplicationRecord
  has_many :teachers, through: :Subject_teacher
end
