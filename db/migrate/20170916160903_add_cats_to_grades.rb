class AddCatsToGrades < ActiveRecord::Migration[5.1]
  def change
    add_column :grades, :cat1, :integer
    add_column :grades, :cat2, :integer
    add_column :grades, :cat3, :integer
  end
end
