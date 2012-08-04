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

ActiveRecord::Schema.define(:version => 20120802202138) do

  create_table "action_requests", :force => true do |t|
    t.integer  "cost"
    t.string   "coupone_code"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "sex"
    t.date     "birthdate"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "dating_event_id"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "dating_events", :force => true do |t|
    t.date     "event_date"
    t.string   "name"
    t.text     "description"
    t.integer  "place_id"
    t.string   "state"
    t.integer  "limit"
    t.time     "time_start"
    t.time     "time_end"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "slug"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "place_assets", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "file"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "state"
    t.integer  "limit"
    t.text     "map"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "remember_me"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "nickname"
    t.string   "avatar"
    t.string   "weburl"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "code"
    t.integer  "sort"
    t.string   "state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
