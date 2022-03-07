class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :token
      t.integer :chat_count
      t.timestamps
    end
  end
end
