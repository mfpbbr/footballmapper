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

ActiveRecord::Schema.define(:version => 20130716174502) do

  create_table "advertisers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "advertisement"
    t.string   "business_name"
    t.string   "city"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "state"
    t.string   "street"
    t.string   "url"
    t.string   "zipcode"
    t.integer  "school_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
  end

  add_index "advertisers", ["email"], :name => "index_advertisers_on_email", :unique => true
  add_index "advertisers", ["reset_password_token"], :name => "index_advertisers_on_reset_password_token", :unique => true

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "wins"
    t.integer  "losses"
    t.float    "pts_against"
    t.float    "pts_for"
    t.integer  "division"
    t.boolean  "big_game"
    t.boolean  "highly_recruited"
    t.integer  "globe_rank"
    t.integer  "herald_rank"
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.boolean  "gmaps"
    t.integer  "league_id"
  end

end
