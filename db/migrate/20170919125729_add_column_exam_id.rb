class AddColumnExamId < ActiveRecord::Migration[5.1]
  def change
       add_column(:grades, :exam_id, :integer)
  end
end
