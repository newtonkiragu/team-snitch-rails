class CreateSchoolAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :school_attachments do |t|
      t.integer :school_id
      t.string :avatar

      t.timestamps
    end
  end
end
