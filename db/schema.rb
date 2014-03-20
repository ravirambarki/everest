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

ActiveRecord::Schema.define(version: 20140320200227) do

  # These are extensions that must be enabled in order to support this database
 
  create_table "coredealers", force: true do |t|
    t.integer  "membership_no"
    t.string   "agency_name"
    t.integer  "total"
    t.integer  "average_value"
    t.integer  "tonnage_per_month"
    t.string   "email_id"
    t.text     "mobile_number"
    t.string   "contact_person"
    t.string   "communication_address"
    t.string   "zone"
    t.string   "state"
    t.string   "sales_district_no"
    t.string   "sales_district_description"
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

end
