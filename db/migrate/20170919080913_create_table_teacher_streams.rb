class CreateTableTeacherStreams < ActiveRecord::Migration[5.1]
  def change
    create_join_table :teachers, :streams do |t|
      t.index [:teacher_id, :stream_id]
    end
  end
end
