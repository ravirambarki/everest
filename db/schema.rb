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

ActiveRecord::Schema.define(version: 20140228164852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "activities", force: true do |t|
    t.text     "model"
    t.integer  "user_id"
    t.string   "user_name"
    t.integer  "belongsTo"
    t.text     "action_performed"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.integer  "pin"
    t.string   "phone"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cart_items", force: true do |t|
    t.integer  "product_id"
    t.decimal  "price"
    t.integer  "quantity"
    t.string   "units"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "include_service"
  end

  create_table "carts", force: true do |t|
    t.integer  "customer_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "appointment_time"
  end

  create_table "categories", force: true do |t|
    t.text     "name"
    t.string   "image"
    t.text     "description"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.string   "title"
  end

  create_table "category_to_products", force: true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coredealers", force: true do |t|
    t.integer  "MEMBERSHIP_NO"
    t.string   "AGENCY_NAME"
    t.integer  "Total"
    t.integer  "Average_value"
    t.integer  "Tonnage_Per_Month"
    t.string   "Email_ID"
    t.text     "Mobile_Number"
    t.string   "Contact_Person"
    t.string   "Communication_Address"
    t.string   "Zone"
    t.string   "STATE"
    t.string   "Sales_District_no"
    t.string   "Sales_District_Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_groups", force: true do |t|
    t.text     "description"
    t.integer  "permission_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_leads", force: true do |t|
    t.text     "type_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customer_managements", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "mobile_number"
    t.integer  "customer_id"
    t.string   "remember_token"
    t.string   "password_digest"
    t.text     "provider"
    t.text     "uid"
    t.text     "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_group_id"
    t.integer  "customer_lead_id"
    t.string   "role"
  end

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.decimal  "contact_no"
    t.text     "add_line1"
    t.text     "add_line2"
    t.text     "city"
    t.decimal  "pin"
    t.boolean  "wishlist"
    t.integer  "customer_group_id"
    t.integer  "customer_lead_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detail_transactions", force: true do |t|
    t.integer  "transaction_no"
    t.string   "dealership_code"
    t.string   "sku"
    t.integer  "openingStock"
    t.integer  "purchaseWeekStock"
    t.integer  "salesWeekStock"
    t.integer  "estimatedSelling"
    t.integer  "breakage"
    t.datetime "submission_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_to_products", force: true do |t|
    t.integer  "order_id"
    t.integer  "store_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "include_service"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.integer  "voucher_id"
    t.integer  "payment_id"
    t.integer  "address_id"
    t.decimal  "discount"
    t.text     "discount_message"
    t.time     "appointment_date"
    t.decimal  "duration_inHrs"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "additional_info"
    t.string   "display_id"
    t.datetime "appointment_time"
  end

  create_table "payments", force: true do |t|
    t.integer  "payment_method"
    t.decimal  "payment_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_to_tools", force: true do |t|
    t.integer  "product_id"
    t.integer  "tool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_variants", force: true do |t|
    t.integer  "product_id"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price"
    t.string   "brand"
    t.decimal  "service_price"
    t.string   "location"
  end

  create_table "products", force: true do |t|
    t.text     "name"
    t.integer  "parent"
    t.string   "image"
    t.text     "description"
    t.text     "meta_description"
    t.text     "meta_keyword"
    t.integer  "views"
    t.boolean  "active"
    t.string   "video"
    t.text     "how2fix"
    t.string   "menu_parent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nature"
    t.string   "variant_name"
    t.string   "permalink"
    t.string   "variant_matric"
  end

  create_table "reviews", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.integer  "customer_id"
    t.text     "keys"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "store_to_products", force: true do |t|
    t.integer  "store_id"
    t.integer  "product_id"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.text     "contact_name"
    t.decimal  "contact_no"
    t.text     "address"
    t.decimal  "pin"
    t.text     "review"
    t.decimal  "rating"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "dealership_code"
    t.string   "dealership_name"
    t.string   "contact_person"
    t.string   "address"
    t.string   "city"
    t.string   "contact"
    t.boolean  "weekly_submission"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vouchers", force: true do |t|
    t.text     "description"
    t.integer  "customer_group_id"
    t.integer  "type_name"
    t.decimal  "value"
    t.date     "validity_till"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
