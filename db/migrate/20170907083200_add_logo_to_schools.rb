class AddLogoToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :logo, :string
  end
end
