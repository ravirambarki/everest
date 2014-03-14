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
