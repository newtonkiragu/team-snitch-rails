class AddColumsStreamTeachers < ActiveRecord::Migration[5.1]
  def change
   add_column(:teachers, :stream_id, :integer)
  end
end
