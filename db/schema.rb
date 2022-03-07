# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_06_174331) do
  create_table "applications", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "token"
    t.integer "chat_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", charset: "latin1", force: :cascade do |t|
    t.string "application_token"
    t.string "message_body"
    t.integer "message_count"
    t.integer "message_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
