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

ActiveRecord::Schema.define(version: 20140316052208) do

  create_table "appointments", force: true do |t|
    t.integer  "salon_id"
    t.integer  "stylist_id"
    t.integer  "service_id"
    t.date     "date"
    t.time     "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.integer  "salon_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.integer  "user_id"
    t.string   "image_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
    t.datetime "date_of_birth"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: true do |t|
    t.integer  "salon_id"
    t.integer  "stylist_id"
    t.integer  "service_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salons", force: true do |t|
    t.integer  "user_id"
    t.string   "salon_name"
    t.string   "owner_name"
    t.string   "contact_name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.integer  "salon_id"
    t.integer  "category_id"
    t.string   "service_name"
    t.string   "service_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "price"
  end

  create_table "stylists", force: true do |t|
    t.integer  "salon_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
    t.date     "date_of_birth"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
