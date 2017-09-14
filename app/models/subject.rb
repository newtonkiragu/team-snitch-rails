class Subject < ApplicationRecord
<<<<<<< HEAD
  has_many :teachers, through: :Subject_teacher
=======
  has_many :subject_teachers
  has_many :teachers, through: :subject_teachers

  def name_with_state
 "#{name}"
  end
>>>>>>> f5890d947d844a6808f5f4a8526d3e497ccdfc2f
end
