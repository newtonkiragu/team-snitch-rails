class CreateParents < ActiveRecord::Migration[5.1]
  def change
    create_table :parents do |t|
      t.references :student, foreign_key: true
      t.string :name
      t.integer :mobile
      t.column :email, :varchar

      t.timestamps
    end
  end
end
