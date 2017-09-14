class CreateTeacherAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_attachments do |t|
      t.integer :teacher_id
      t.string :avatar

      t.timestamps
    end
  end
end
