class DropSubjectTeachers < ActiveRecord::Migration[5.1]
  def change
    drop_table :subject_teachers
  end
end
