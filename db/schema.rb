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

ActiveRecord::Schema[7.1].define(version: 2024_07_12_020007) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.bigint "engineer_id", null: false
    t.string "day"
    t.integer "week"
    t.integer "year"
    t.integer "start_time"
    t.integer "end_time"
    t.boolean "available", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_availabilities_on_engineer_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.text "terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_contracts_on_service_id"
  end

  create_table "engineers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monitoring_schedules", force: :cascade do |t|
    t.bigint "contract_id", null: false
    t.string "day"
    t.integer "start_time"
    t.integer "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_monitoring_schedules_on_contract_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "engineer_id", null: false
    t.bigint "shift_id", null: false
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_notes_on_engineer_id"
    t.index ["shift_id"], name: "index_notes_on_shift_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "client"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.bigint "engineer_id", null: false
    t.bigint "service_id", null: false
    t.datetime "hour", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engineer_id"], name: "index_shifts_on_engineer_id"
    t.index ["service_id"], name: "index_shifts_on_service_id"
  end

  add_foreign_key "availabilities", "engineers"
  add_foreign_key "contracts", "services"
  add_foreign_key "monitoring_schedules", "contracts"
  add_foreign_key "notes", "engineers"
  add_foreign_key "notes", "shifts"
  add_foreign_key "shifts", "engineers"
  add_foreign_key "shifts", "services"
end
