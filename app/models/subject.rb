class Subject < ApplicationRecord
  has_many :grades
  has_and_belongs_to_many :students
  has_and_belongs_to_many :teachers
  has_many :assignments
  has_and_belongs_to_many :students

  def name_with_state
 "#{name}"
  end
end
