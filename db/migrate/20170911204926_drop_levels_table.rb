class DropLevelsTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :level
  end
end
