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

ActiveRecord::Schema.define(version: 20141217012313) do

  create_table "boards", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boards", ["site_id", "created_at"], name: "index_boards_on_site_id_and_created_at", using: :btree

  create_table "industries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "url"
    t.string   "user_name"
    t.string   "title"
    t.text     "content"
    t.integer  "read_count"
    t.integer  "comment_count"
    t.text     "user_info"
    t.boolean  "is_high_quality"
    t.integer  "board_id"
    t.integer  "site_id"
    t.integer  "industry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["board_id", "site_id", "industry_id"], name: "index_messages_on_board_id_and_site_id_and_industry_id", using: :btree

  create_table "sites", force: true do |t|
    t.string   "name"
    t.integer  "industry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["industry_id", "created_at"], name: "index_sites_on_industry_id_and_created_at", using: :btree

end
