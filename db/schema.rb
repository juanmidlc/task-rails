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

ActiveRecord::Schema.define(version: 2019_06_17_181509) do

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_profiles", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "profile_id"
    t.index ["category_id"], name: "index_categories_profiles_on_category_id"
    t.index ["profile_id"], name: "index_categories_profiles_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", default: 0
    t.integer "occupation", default: 0
    t.string "user", null: false
    t.string "password", null: false
    t.time "start_at", null: false
    t.time "finish_at", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.text "description", null: false
    t.datetime "start_at", null: false
    t.datetime "expires_at", null: false
    t.boolean "finished", default: false
    t.integer "session_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.boolean "finished", default: false
    t.integer "priority", default: 0
    t.string "color", null: false
    t.date "expires_at"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "session_id"
    t.index ["category_id"], name: "index_tasks_on_category_id"
    t.index ["session_id"], name: "index_tasks_on_session_id"
  end

  create_table "time_entries", force: :cascade do |t|
    t.string "trackable_type"
    t.integer "trackable_id"
    t.bigint "elapsed_time", default: 0
    t.datetime "starting_time", null: false
    t.datetime "ending_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trackable_type", "trackable_id"], name: "index_time_entries_on_trackable_type_and_trackable_id"
  end

end
