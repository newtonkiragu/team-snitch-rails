class Subject < ApplicationRecord
  has_many :subject_teachers
  has_many :teachers, through: :subject_teachers

  def name_with_state
 "#{name}"
  end
end
