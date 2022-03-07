class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.string :application_token 
      t.string :message_body
      t.integer :message_count
      t.integer :message_number
      t.timestamps
    end
  end
end
