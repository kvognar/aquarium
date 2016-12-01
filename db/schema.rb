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

ActiveRecord::Schema.define(version: 20161201223350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "name",       null: false
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artists", ["name"], name: "index_artists_on_name", using: :btree

  create_table "impressions", force: true do |t|
    t.integer  "user_id",            null: false
    t.integer  "work_id",            null: false
    t.text     "reflection"
    t.text     "spoiler_reflection"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["finished_at"], name: "index_impressions_on_finished_at", using: :btree
  add_index "impressions", ["started_at"], name: "index_impressions_on_started_at", using: :btree
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id", using: :btree
  add_index "impressions", ["work_id"], name: "index_impressions_on_work_id", using: :btree

  create_table "notes", force: true do |t|
    t.integer  "impression_id",                 null: false
    t.text     "body"
    t.boolean  "is_spoiler",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["impression_id"], name: "index_notes_on_impression_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",      null: false
    t.string   "password_hash", null: false
    t.string   "session_token", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "works", force: true do |t|
    t.string   "title",      null: false
    t.integer  "artist_id"
    t.string   "medium"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "works", ["artist_id"], name: "index_works_on_artist_id", using: :btree
  add_index "works", ["medium"], name: "index_works_on_medium", using: :btree
  add_index "works", ["title"], name: "index_works_on_title", using: :btree

end
