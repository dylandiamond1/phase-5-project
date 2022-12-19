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

ActiveRecord::Schema[7.0].define(version: 2022_12_16_182149) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "architects", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "company_name"
    t.string "contact_number"
    t.string "website_url"
    t.bigint "houses_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["houses_id"], name: "index_architects_on_houses_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "address"
    t.string "state"
    t.string "zip"
    t.string "city"
    t.string "image"
    t.integer "sq_ft"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "elementary_school"
    t.string "middle_school"
    t.string "high_school"
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_schools_on_city_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "architects", "houses", column: "houses_id"
  add_foreign_key "houses", "users"
  add_foreign_key "schools", "cities"
end
