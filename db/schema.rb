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

ActiveRecord::Schema.define(version: 20160530132537) do

  create_table "answers", force: :cascade do |t|
    t.integer  "secure_id",  limit: 8
    t.integer  "offer_id",             null: false
    t.integer  "a01",                  null: false
    t.integer  "a02",                  null: false
    t.integer  "a03",                  null: false
    t.integer  "a04",                  null: false
    t.integer  "a05",                  null: false
    t.integer  "a06",                  null: false
    t.integer  "a07",                  null: false
    t.integer  "a08",                  null: false
    t.integer  "a09",                  null: false
    t.integer  "a10",                  null: false
    t.integer  "a11",                  null: false
    t.integer  "a12",                  null: false
    t.integer  "a13",                  null: false
    t.integer  "a14",                  null: false
    t.text     "comment"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "answers", ["offer_id"], name: "index_answers_on_offer_id"
  add_index "answers", ["secure_id"], name: "index_answers_on_secure_id", unique: true

  create_table "courses", force: :cascade do |t|
    t.text     "code"
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "courses", ["code"], name: "index_courses_on_code", unique: true
  add_index "courses", ["name"], name: "index_courses_on_name", unique: true

  create_table "offers", force: :cascade do |t|
    t.integer  "secure_id",    limit: 8
    t.integer  "professor_id",           null: false
    t.integer  "course_id",              null: false
    t.integer  "semester",               null: false
    t.integer  "shift",                  null: false
    t.boolean  "active",                 null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "offers", ["secure_id"], name: "index_offers_on_secure_id", unique: true

  create_table "professors", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "professors", ["name"], name: "index_professors_on_name", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
