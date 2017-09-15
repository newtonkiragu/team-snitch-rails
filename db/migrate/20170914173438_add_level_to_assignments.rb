class AddLevelToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :level_id, :varchar
    add_column :assignments, :stream_id, :varchar
    add_column :assignments, :subject_id, :varchar
    add_column :assignments, :assignment_details, :varchar
    add_column :assignments, :due_date, :datetime
    add_column :assignments, :extra_resources, :varchar
  end
end
