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

ActiveRecord::Schema.define(version: 20171014230137) do

  create_table "compares", force: :cascade do |t|
    t.string   "img1_url"
    t.string   "img2_url"
    t.string   "headline"
    t.integer  "user_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "img1_pts",                 default: 0, null: false
    t.integer  "img2_pts",                 default: 0, null: false
    t.string   "compareimg1_file_name"
    t.string   "compareimg1_content_type"
    t.integer  "compareimg1_file_size"
    t.datetime "compareimg1_updated_at"
    t.string   "compareimg2_file_name"
    t.string   "compareimg2_content_type"
    t.integer  "compareimg2_file_size"
    t.datetime "compareimg2_updated_at"
    t.index ["user_id"], name: "index_compares_on_user_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.integer  "credit",                 default: 0
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "compare_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "choice"
    t.index ["compare_id"], name: "index_votes_on_compare_id"
    t.index ["user_id", "compare_id"], name: "index_votes_on_user_id_and_compare_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

end
