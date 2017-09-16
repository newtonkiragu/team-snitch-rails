class AddColumn < ActiveRecord::Migration[5.1]
  def change
      add_column(:streams, :level_id, :integer)
      add_column(:students, :level_id, :integer)
  end
end
