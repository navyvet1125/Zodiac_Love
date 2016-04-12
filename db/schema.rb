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

ActiveRecord::Schema.define(version: 20160412171054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.string   "title"
    t.text     "message_body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "is_read"
  end

  create_table "sun_signs", force: :cascade do |t|
    t.string   "name"
    t.string   "month"
    t.string   "day"
    t.integer  "previous_id"
    t.integer  "next_id"
    t.string   "quality"
    t.string   "element"
    t.string   "celestial_body"
    t.string   "info"
    t.string   "strengths"
    t.string   "weaknesses"
    t.string   "most_compatible"
    t.string   "least_compatible"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "born_on"
    t.string   "profile_title"
    t.text     "profile_info"
    t.integer  "sun_sign_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
