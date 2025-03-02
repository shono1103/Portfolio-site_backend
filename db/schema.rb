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

ActiveRecord::Schema[8.0].define(version: 2025_03_02_040924) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "necessary_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date_of_birth"
    t.string "residence"
    t.string "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_necessary_profiles_on_user_id"
  end

  create_table "unnecessary_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "place_of_birth"
    t.string "certificate", default: [], array: true
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_unnecessary_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "name_order"
    t.string "family_name"
    t.string "given_name"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "necessary_profiles", "users"
  add_foreign_key "unnecessary_profiles", "users"
end
