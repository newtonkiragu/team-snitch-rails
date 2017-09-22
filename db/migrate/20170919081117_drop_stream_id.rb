class DropStreamId < ActiveRecord::Migration[5.1]
  def change
    remove_column :teachers, :stream_id
  end
end
