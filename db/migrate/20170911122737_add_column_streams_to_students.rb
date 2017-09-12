class AddColumnStreamsToStudents < ActiveRecord::Migration[5.1]
  def change
      add_column :students, :stream_id, :integer
  end
end
