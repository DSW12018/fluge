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

ActiveRecord::Schema.define(version: 20180424021832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"
  enable_extension "pgcrypto"

  create_table "aircrafts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "iata", limit: 3
    t.string "name"
    t.string "manufacturer"
  end

  create_table "airlines", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "iata"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airports", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "iata", limit: 3
    t.string "name"
    t.integer "boarding_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_addresses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "zip_code">>>>>>> Creating customer_address

    t.string "address"
    t.string "number"
    t.string "complement"
    t.string "neighborhood"
    t.string "city"
    t.uuid "federated_unit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["federated_unit_id"], name: "index_customer_addresses_on_federated_unit_id"
  end

  create_table "customers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "cpf", default: "", null: false
    t.date "birth_date"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "federated_units", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "acronym"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "flight_number"
    t.integer "departure"
    t.integer "arrival"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "airline_id", null: false
    t.uuid "aircraft_id", null: false
    t.uuid "origin_id"
    t.uuid "destination_id"
    t.index ["aircraft_id"], name: "index_flights_on_aircraft_id"
    t.index ["airline_id"], name: "index_flights_on_airline_id"
    t.index ["destination_id"], name: "index_flights_on_destination_id"
    t.index ["origin_id"], name: "index_flights_on_origin_id"
  end

  create_table "passengers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.date "birth_date"
    t.integer "document_type"
    t.string "document_number"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customer_addresses", "federated_units"
  add_foreign_key "flights", "aircrafts"
  add_foreign_key "flights", "airlines"
  add_foreign_key "flights", "airports", column: "destination_id"
  add_foreign_key "flights", "airports", column: "origin_id"
end
