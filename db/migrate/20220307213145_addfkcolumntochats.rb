class Addfkcolumntochats < ActiveRecord::Migration[7.0]
  def change
    add_reference :chats, :application, foreign_key: true
  end
end
