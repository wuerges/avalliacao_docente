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

ActiveRecord::Schema.define(version: 20160525153325) do

  create_table "courses", force: :cascade do |t|
    t.text     "code"
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "courses", ["code"], name: "index_courses_on_code", unique: true
  add_index "courses", ["name"], name: "index_courses_on_name", unique: true

  create_table "offers", force: :cascade do |t|
    t.integer  "professor_id", null: false
    t.integer  "course_id",    null: false
    t.integer  "semester",     null: false
    t.integer  "shift",        null: false
    t.boolean  "active",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "professors", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "professors", ["name"], name: "index_professors_on_name", unique: true

end
