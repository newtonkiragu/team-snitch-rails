class CreateJoinTableSubjectStudent < ActiveRecord::Migration[5.1]
  def change
    create_join_table :subjects, :students do |t|
      t.index [:subject_id, :student_id]
    end
  end
end
