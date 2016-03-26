# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160326043630) do

  create_table "additionals", force: :cascade do |t|
    t.integer  "supply_id",   limit: 4
    t.string   "description", limit: 255
    t.boolean  "active"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "additionals", ["supply_id"], name: "index_additionals_on_supply_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "active"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "parking_types", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "active"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "identity_number", limit: 255
    t.datetime "born_at"
    t.string   "phone_number",    limit: 255
    t.string   "landline_number", limit: 255
    t.string   "contact",         limit: 255
    t.string   "company_name",    limit: 255
    t.string   "address",         limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id",         limit: 4
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "regions", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "active"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "active"
    t.integer  "region_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "states", ["region_id"], name: "index_states_on_region_id", using: :btree

  create_table "supplies", force: :cascade do |t|
    t.integer  "number_space", limit: 4
    t.float    "hourly_rate",  limit: 24
    t.float    "daily_rate",   limit: 24
    t.float    "weekly_rate",  limit: 24
    t.float    "monthly_rate", limit: 24
    t.integer  "region_id",    limit: 4
    t.integer  "state_id",     limit: 4
    t.integer  "zone_id",      limit: 4
    t.string   "address",      limit: 255
    t.boolean  "active"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "supplies", ["region_id"], name: "index_supplies_on_region_id", using: :btree
  add_index "supplies", ["state_id"], name: "index_supplies_on_state_id", using: :btree
  add_index "supplies", ["zone_id"], name: "index_supplies_on_zone_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicle_types", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "active"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "descripcion",     limit: 255
    t.integer  "brand_id",        limit: 4
    t.integer  "vehicle_type_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.boolean  "active"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "vehicles", ["brand_id"], name: "index_vehicles_on_brand_id", using: :btree
  add_index "vehicles", ["user_id"], name: "index_vehicles_on_user_id", using: :btree
  add_index "vehicles", ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id", using: :btree

  create_table "zones", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "active"
    t.integer  "state_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "zones", ["state_id"], name: "index_zones_on_state_id", using: :btree

  add_foreign_key "additionals", "supplies"
  add_foreign_key "profiles", "users"
  add_foreign_key "states", "regions"
  add_foreign_key "supplies", "regions"
  add_foreign_key "supplies", "states"
  add_foreign_key "supplies", "zones"
  add_foreign_key "vehicles", "brands"
  add_foreign_key "vehicles", "users"
  add_foreign_key "vehicles", "vehicle_types"
  add_foreign_key "zones", "states"
end
