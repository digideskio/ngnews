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

ActiveRecord::Schema.define(version: 20150417102335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "easy_tokens_tokens", force: :cascade do |t|
    t.string   "value"
    t.string   "description"
    t.string   "owner_id"
    t.datetime "deactivated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: :cascade do |t|
    t.text     "body"
    t.string   "category"
    t.string   "source"
    t.boolean  "public"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.date     "start_date"
    t.date     "end_date"
    t.string   "sub_category"
  end

  add_index "items", ["category"], name: "index_items_on_category", using: :btree

end
