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

ActiveRecord::Schema.define(version: 2021_09_29_172030) do

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "rooms"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "parking_slot"
    t.integer "bathrooms"
    t.boolean "pets"
    t.integer "daily_rate"
    t.integer "property_type_id", null: false
    t.integer "property_location_id", null: false
    t.index ["property_location_id"], name: "index_properties_on_property_location_id"
    t.index ["property_type_id"], name: "index_properties_on_property_type_id"
  end

  create_table "property_locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "property_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "properties", "property_locations"
  add_foreign_key "properties", "property_types"
end
