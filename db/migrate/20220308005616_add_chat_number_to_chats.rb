class AddChatNumberToChats < ActiveRecord::Migration[7.0]
  def change
    add_column :chats, :chat_number, :integer
  end
end
