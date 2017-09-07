class AddPictureToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :picture, :string
  end
end
