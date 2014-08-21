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

ActiveRecord::Schema.define(version: 20140821130116) do

  create_table "bars", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "drink_style_id"
    t.integer  "zik_style_id"
  end

  add_index "bars", ["drink_style_id"], name: "index_bars_on_drink_style_id"
  add_index "bars", ["name", "city", "country"], name: "index_bars_on_name_and_city_and_country", unique: true
  add_index "bars", ["zik_style_id"], name: "index_bars_on_zik_style_id"

  create_table "drink_styles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drink_styles", ["name"], name: "index_drink_styles_on_name", unique: true

  create_table "zik_styles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "zik_styles", ["name"], name: "index_zik_styles_on_name", unique: true

end
