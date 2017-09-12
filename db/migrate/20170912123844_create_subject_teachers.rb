class CreateSubjectTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_teachers do |t|
      t.int :subject_id
      t.int :teacher_id
    end
  end
end
