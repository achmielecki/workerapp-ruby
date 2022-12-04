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

ActiveRecord::Schema[7.0].define(version: 2022_12_04_214906) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dyrektors", force: :cascade do |t|
    t.string "Name"
    t.string "Surname"
    t.decimal "Salary"
    t.bigint "magazyn_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["magazyn_id"], name: "index_dyrektors_on_magazyn_id"
  end

  create_table "magazyniers", force: :cascade do |t|
    t.string "Name"
    t.string "Surname"
    t.decimal "Salary"
    t.string "Shift"
    t.bigint "magazyn_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["magazyn_id"], name: "index_magazyniers_on_magazyn_id"
  end

  create_table "magazyns", force: :cascade do |t|
    t.string "City"
    t.string "Street"
    t.string "PostalCode"
    t.string "Country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dyrektors", "magazyns"
  add_foreign_key "magazyniers", "magazyns"
end
