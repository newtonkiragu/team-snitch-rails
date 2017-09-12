class CreateStreams < ActiveRecord::Migration[5.1]
  def change
    create_table :streams do |t|
      t.integer :level
      t.string :stream

      t.timestamps
    end
  end
end
