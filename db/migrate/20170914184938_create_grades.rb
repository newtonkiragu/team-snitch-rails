class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.integer :score
      t.string :grade
      t.integer :subject_id
      t.integer :student_id

      t.timestamps
    end
  end
end
