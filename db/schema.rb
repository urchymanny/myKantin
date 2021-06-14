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

ActiveRecord::Schema.define(version: 2021_03_31_233357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "balances", force: :cascade do |t|
    t.decimal "ngn", default: "0.0"
    t.decimal "btc", default: "0.0"
    t.decimal "eth", default: "0.0"
    t.decimal "ttc", default: "0.0"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "bank"
    t.string "account_number"
    t.string "account_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bank_code"
  end

  create_table "crypto_wallets", force: :cascade do |t|
    t.string "private_key"
    t.string "public_key"
    t.string "address"
    t.string "wif"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "currency"
    t.decimal "balance", precision: 16, scale: 8, default: "0.0"
  end

  create_table "cuisines", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id"
  end

  create_table "dishes", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.float "price"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "restaurant_id"
    t.integer "cuisine_id"
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "lgas", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsletters", id: :serial, force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.string "currency"
    t.decimal "buy_rate"
    t.decimal "sell_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_searches", id: :serial, force: :cascade do |t|
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_restaurant_searches_on_slug", unique: true
  end

  create_table "restaurants", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "country"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lga_id"
    t.integer "state_id"
    t.float "latitude"
    t.float "longitude"
    t.string "slug"
    t.boolean "sponsored", default: false
    t.index ["slug"], name: "index_restaurants_on_slug", unique: true
  end

  create_table "states", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.decimal "amount"
    t.date "tansaction_date"
    t.string "transaction_type"
    t.integer "user_id"
    t.string "bank"
    t.string "reference"
    t.string "currency"
    t.string "transfer_code"
    t.string "status"
    t.string "domain"
    t.integer "transaction_id"
    t.string "reason"
    t.integer "integration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "recipient"
    t.string "ip"
    t.string "service_ref"
    t.string "data_code"
    t.decimal "service_charge"
    t.string "account_type"
    t.string "credit_token"
    t.string "serial_number"
    t.string "expiry"
    t.string "value"
    t.string "customer_name"
    t.string "customer_address"
    t.string "trace"
    t.string "indicator", default: "D"
    t.string "description"
    t.string "wallet", default: "ngn"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.string "email_token"
    t.string "country"
    t.string "phone"
    t.string "phone_token"
    t.string "gender"
    t.string "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "phone_token_validated", default: false
    t.boolean "email_token_validated", default: false
    t.string "referral_code"
    t.boolean "verification", default: false
    t.string "id_type"
    t.string "id_number"
    t.string "first_name"
    t.string "last_name"
    t.boolean "transaction_notification", default: true
    t.boolean "important_upates_promotions", default: false
    t.boolean "newsletter", default: false
    t.string "transcation_pin"
    t.string "bvn"
    t.string "avatar"
    t.string "id_image"
    t.string "bvn_ref"
    t.boolean "validated_bvn", default: false
    t.string "bvn_phone"
    t.string "bvn_last_name"
    t.string "bvn_first_name"
    t.string "bvn_middle_name"
  end

end
