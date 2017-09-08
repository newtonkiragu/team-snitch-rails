class AddPictureToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :picture, :string
  end
end
