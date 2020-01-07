# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_07_201526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foodbanks", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "parent_organisation"
    t.string "address"
    t.float "lat"
    t.float "lng"
    t.boolean "approved"
    t.index ["email"], name: "index_foodbanks_on_email", unique: true
    t.index ["reset_password_token"], name: "index_foodbanks_on_reset_password_token", unique: true
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_list_items", id: false, force: :cascade do |t|
    t.bigint "foodbanks_id"
    t.bigint "food_items_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.index ["food_items_id"], name: "index_shopping_list_items_on_food_items_id"
    t.index ["foodbanks_id"], name: "index_shopping_list_items_on_foodbanks_id"
  end

end
