class AddColumnUserid < ActiveRecord::Migration[5.1]
  def change
   add_column(:students, :mwanafunzi_id, :integer)  
  end
end
