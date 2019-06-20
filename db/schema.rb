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

ActiveRecord::Schema.define(version: 2019_06_19_210829) do

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
    t.integer "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
