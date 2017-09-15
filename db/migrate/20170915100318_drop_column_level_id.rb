class DropColumnLevelId < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :level_id
  end
end
