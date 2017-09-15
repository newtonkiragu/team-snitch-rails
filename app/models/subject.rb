class Subject < ApplicationRecord
  has_many :grades
  has_and_belongs_to_many :students
  has_many :subject_teachers
  has_many :teachers, through: :subject_teachers
  has_many :assignments
  has_and_belongs_to_many :students

  def name_with_state
 "#{name}"
  end
end
