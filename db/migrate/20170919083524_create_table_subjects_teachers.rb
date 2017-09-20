class CreateTableSubjectsTeachers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :teachers, :subjects do |t|
      t.index [:teacher_id, :subject_id]
    end
  end
end
