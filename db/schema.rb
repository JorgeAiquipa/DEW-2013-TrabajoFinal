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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130210134048) do

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "document_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locals", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "gmap"
    t.integer  "district_id"
    t.string   "phone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "locals", ["district_id"], :name => "index_locals_on_district_id"

  create_table "tournaments", :force => true do |t|
    t.string   "name"
    t.integer  "group"
    t.date     "date"
    t.time     "time"
    t.integer  "local_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tournaments", ["local_id"], :name => "index_tournaments_on_local_id"

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "name"
    t.string   "father_last_name"
    t.string   "mother_last_name"
    t.boolean  "gender"
    t.integer  "document_type_id"
    t.string   "document_number"
    t.string   "address"
    t.integer  "district_id"
    t.date     "birth_date"
    t.string   "mobile_phone"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "users", ["district_id"], :name => "index_users_on_district_id"
  add_index "users", ["document_type_id"], :name => "index_users_on_document_type_id"

end
