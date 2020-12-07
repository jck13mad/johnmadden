# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_24_140847) do

  create_table "bag_items", force: :cascade do |t|
    t.integer "user_id"
    t.integer "head_id"
    t.integer "quantity"
    t.datetime "updated_at"
  end

  create_table "heads", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "brand"
    t.string "img"
    t.string "gender"
    t.string "description"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "bag_id"
  end

end
