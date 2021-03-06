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

ActiveRecord::Schema.define(version: 2020_05_30_060120) do

  create_table "perks", force: :cascade do |t|
    t.string "name"
    t.integer "rate"
    t.text "context"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "post_likes", force: :cascade do |t|
    t.integer "post_id", null: false
    t.string "ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_post_likes_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "text"
    t.integer "like"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "weapon_id"
    t.integer "perk_id"
  end

  create_table "weapon_likes", force: :cascade do |t|
    t.integer "weapon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ip"
    t.index ["weapon_id"], name: "index_weapon_likes_on_weapon_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "attack"
    t.integer "fire_rate"
    t.text "context"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "post_likes", "posts"
  add_foreign_key "weapon_likes", "weapons"
end
