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

ActiveRecord::Schema.define(version: 20141002124145) do

  create_table "attended_campuses", force: true do |t|
    t.integer  "student_id",     null: false
    t.integer  "campus_id",      null: false
    t.boolean  "primary_campus", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attended_campuses", ["campus_id"], name: "index_attended_campuses_on_campus_id"
  add_index "attended_campuses", ["primary_campus"], name: "index_attended_campuses_on_primary_campus"
  add_index "attended_campuses", ["student_id", "campus_id"], name: "index_attended_campuses_on_student_id_and_campus_id", unique: true

  create_table "campus", force: true do |t|
    t.string   "city",       null: false
    t.string   "state",      null: false
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
