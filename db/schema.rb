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

ActiveRecord::Schema.define(version: 2021_10_26_223058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "activity_logs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "booking_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "booking_id", null: false
    t.bigint "gear_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_booking_items_on_booking_id"
    t.index ["gear_id"], name: "index_booking_items_on_gear_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "uid"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "consumptions", force: :cascade do |t|
    t.string "uid"
    t.bigint "gear_id"
    t.bigint "driver_id"
    t.float "quantity", default: 0.0
    t.string "unit"
    t.string "fuel_type"
    t.string "status"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_consumptions_on_driver_id"
    t.index ["gear_id"], name: "index_consumptions_on_gear_id"
    t.index ["user_id"], name: "index_consumptions_on_user_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "uid"
    t.string "customer_type"
    t.string "company_name"
    t.string "firt_name"
    t.string "last_name"
    t.string "civility"
    t.string "address"
    t.string "contry"
    t.string "city"
    t.string "locality"
    t.string "phone"
    t.string "email"
    t.string "status"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_drivers_on_user_id"
  end

  create_table "expense_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "status"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_expense_types_on_user_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.bigint "gear_id"
    t.bigint "expense_type_id"
    t.string "uid"
    t.float "pre_tax_amount", default: 0.0
    t.float "vat_rate", default: 0.0
    t.float "vat_amount", default: 0.0
    t.float "amount_including_tax", default: 0.0
    t.string "status"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expense_type_id"], name: "index_expenses_on_expense_type_id"
    t.index ["gear_id"], name: "index_expenses_on_gear_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "subject_class"
    t.text "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gear_types", force: :cascade do |t|
    t.string "uid"
    t.string "slug"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_gear_types_on_user_id"
  end

  create_table "gears", force: :cascade do |t|
    t.string "uid"
    t.string "slug"
    t.bigint "gear_type_id", null: false
    t.string "brand"
    t.string "model"
    t.string "manufacture_year"
    t.string "name"
    t.string "chassis_number"
    t.string "immatriculation_number"
    t.string "color"
    t.datetime "manufacture_date"
    t.datetime "circulation_date"
    t.string "mileage"
    t.string "fuel_type"
    t.string "status"
    t.text "description"
    t.bigint "park_id"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gear_type_id"], name: "index_gears_on_gear_type_id"
    t.index ["park_id"], name: "index_gears_on_park_id"
    t.index ["user_id"], name: "index_gears_on_user_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.bigint "insurer_id"
    t.bigint "gear_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "insurance_number"
    t.float "pre_tax_amount", default: 0.0
    t.float "vat_rate", default: 0.0
    t.float "vat_amount", default: 0.0
    t.float "amount_including_tax", default: 0.0
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gear_id"], name: "index_insurances_on_gear_id"
    t.index ["insurer_id"], name: "index_insurances_on_insurer_id"
    t.index ["user_id"], name: "index_insurances_on_user_id"
  end

  create_table "insurers", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "country"
    t.string "city"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_insurers_on_user_id"
  end

  create_table "invoice_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "invoice_id", null: false
    t.bigint "r_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_invoice_items_on_invoice_id"
    t.index ["r_id"], name: "index_invoice_items_on_r_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "uid"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "uid"
    t.string "slug"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "maintenance_types", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "status"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_maintenance_types_on_user_id"
  end

  create_table "maintenances", force: :cascade do |t|
    t.bigint "gear_id"
    t.bigint "maintenance_type_id"
    t.string "uid"
    t.float "pre_tax_amount", default: 0.0
    t.float "vat_rate", default: 0.0
    t.float "vat_amount", default: 0.0
    t.float "amount_including_tax", default: 0.0
    t.string "service_provider"
    t.string "status"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gear_id"], name: "index_maintenances_on_gear_id"
    t.index ["maintenance_type_id"], name: "index_maintenances_on_maintenance_type_id"
    t.index ["user_id"], name: "index_maintenances_on_user_id"
  end

  create_table "odometers", force: :cascade do |t|
    t.string "uid"
    t.bigint "gear_id"
    t.bigint "driver_id"
    t.float "mileage", default: 0.0
    t.string "unit"
    t.string "status"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_odometers_on_driver_id"
    t.index ["gear_id"], name: "index_odometers_on_gear_id"
    t.index ["user_id"], name: "index_odometers_on_user_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.integer "capacity"
    t.string "address"
    t.string "country"
    t.string "city"
    t.string "manager"
    t.string "status"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_parks_on_user_id"
  end

  create_table "permission_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "permission_id"
    t.string "action_name"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["permission_id"], name: "index_permission_items_on_permission_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "uid"
    t.bigint "feature_id"
    t.bigint "role_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_permissions_on_feature_id"
    t.index ["role_id"], name: "index_permissions_on_role_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "civility"
    t.string "address"
    t.string "country"
    t.string "city"
    t.string "phone"
    t.text "about"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "rental_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "rental_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rental_id"], name: "index_rental_items_on_rental_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.string "uid"
    t.bigint "booking_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_rentals_on_booking_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "technical_visits", force: :cascade do |t|
    t.bigint "gear_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "reference"
    t.float "pre_tax_amount"
    t.float "vat_rate"
    t.float "amount_including_tax"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gear_id"], name: "index_technical_visits_on_gear_id"
    t.index ["user_id"], name: "index_technical_visits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "login"
    t.string "slug"
    t.bigint "role_id", null: false
    t.integer "owner"
    t.string "status"
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "booking_items", "bookings"
  add_foreign_key "booking_items", "gears"
  add_foreign_key "bookings", "users"
  add_foreign_key "consumptions", "drivers"
  add_foreign_key "consumptions", "gears"
  add_foreign_key "consumptions", "users"
  add_foreign_key "customers", "users"
  add_foreign_key "drivers", "users"
  add_foreign_key "expense_types", "users"
  add_foreign_key "expenses", "expense_types"
  add_foreign_key "expenses", "gears"
  add_foreign_key "expenses", "users"
  add_foreign_key "gear_types", "users"
  add_foreign_key "gears", "gear_types"
  add_foreign_key "gears", "parks"
  add_foreign_key "gears", "users"
  add_foreign_key "insurances", "gears"
  add_foreign_key "insurances", "insurers"
  add_foreign_key "insurances", "users"
  add_foreign_key "insurers", "users"
  add_foreign_key "invoice_items", "invoices"
  add_foreign_key "invoices", "users"
  add_foreign_key "locations", "users"
  add_foreign_key "maintenance_types", "users"
  add_foreign_key "maintenances", "gears"
  add_foreign_key "maintenances", "maintenance_types"
  add_foreign_key "maintenances", "users"
  add_foreign_key "odometers", "drivers"
  add_foreign_key "odometers", "gears"
  add_foreign_key "odometers", "users"
  add_foreign_key "parks", "users"
  add_foreign_key "permission_items", "permissions"
  add_foreign_key "permissions", "features"
  add_foreign_key "permissions", "roles"
  add_foreign_key "profiles", "users"
  add_foreign_key "rental_items", "rentals"
  add_foreign_key "rentals", "bookings"
  add_foreign_key "rentals", "users"
  add_foreign_key "technical_visits", "gears"
  add_foreign_key "technical_visits", "users"
  add_foreign_key "users", "roles"
end
