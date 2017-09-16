class AddClumnsStreamAssignments < ActiveRecord::Migration[5.1]
  def change
   add_column(:assignments, :level_id, :integer)
  end
end
