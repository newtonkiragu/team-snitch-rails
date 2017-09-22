class Subject < ApplicationRecord
  has_many :grades
  has_and_belongs_to_many :students
  has_and_belongs_to_many :teachers
  has_many :assignments

  def name_with_state
    name.to_s
  end
end
