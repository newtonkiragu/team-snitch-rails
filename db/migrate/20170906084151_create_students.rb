class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :level
      t.string :stream
      t.integer :fee
      t.string :dormitory
      t.string :clubs

      t.timestamps
    end
  end
end
