class Subject < ApplicationRecord
  has_many :assignments
  has_many :subject_teachers
  has_many :teachers, through: :subject_teachers
    has_and_belongs_to_many :students
end
