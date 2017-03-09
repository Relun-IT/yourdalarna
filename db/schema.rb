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

ActiveRecord::Schema.define(version: 20170309144559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text     "description",        default: "", null: false
    t.integer  "trip_route_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "title",              default: "", null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  create_table "activity_images", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",               null: false
    t.text     "description",        null: false
    t.text     "address",            null: false
    t.float    "latitude",           null: false
    t.float    "longitude",          null: false
    t.datetime "start_at",           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text     "body",        default: "", null: false
    t.integer  "activity_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.index ["activity_id"], name: "index_feedbacks_on_activity_id", using: :btree
    t.index ["user_id"], name: "index_feedbacks_on_user_id", using: :btree
  end

  create_table "question_options", force: :cascade do |t|
    t.string   "body",         default: "",    null: false
    t.boolean  "right_answer", default: false, null: false
    t.integer  "question_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["question_id"], name: "index_question_options_on_question_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.text     "body",        default: "", null: false
    t.integer  "activity_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["activity_id"], name: "index_questions_on_activity_id", using: :btree
  end

  create_table "trip_route_activities", force: :cascade do |t|
    t.integer  "trip_route_id"
    t.integer  "activity_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["activity_id"], name: "index_trip_route_activities_on_activity_id", using: :btree
    t.index ["trip_route_id"], name: "index_trip_route_activities_on_trip_route_id", using: :btree
  end

  create_table "trip_routes", force: :cascade do |t|
    t.integer  "transport",                  null: false
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "active",     default: false, null: false
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["user_id"], name: "index_trip_routes_on_user_id", using: :btree
  end

  create_table "trivia", force: :cascade do |t|
    t.text     "body",        default: "", null: false
    t.integer  "activity_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["activity_id"], name: "index_trivia_on_activity_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "first_name",             default: "", null: false
    t.string   "surname",                default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "activities", "trip_routes"
  add_foreign_key "activity_images", "activities"
  add_foreign_key "activity_images", "users"
  add_foreign_key "feedbacks", "activities"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "question_options", "questions"
  add_foreign_key "questions", "activities"
  add_foreign_key "trip_route_activities", "activities"
  add_foreign_key "trip_route_activities", "trip_routes"
  add_foreign_key "trip_routes", "users"
  add_foreign_key "trivia", "activities"
end
