class AddPictureToParents < ActiveRecord::Migration[5.1]
  def change
    add_column :parents, :picture, :string
  end
end
