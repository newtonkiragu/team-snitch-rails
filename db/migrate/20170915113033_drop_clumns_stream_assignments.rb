class DropClumnsStreamAssignments < ActiveRecord::Migration[5.1]
  def change
    remove_column :assignments, :stream_id
  end
end
