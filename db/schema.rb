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

ActiveRecord::Schema.define(version: 20140503175209) do

  create_table "gen_trees", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "nodes", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "sex"
    t.integer  "father_id"
    t.integer  "mother_id"
    t.integer  "birth"
    t.string   "picture"
    t.boolean  "isMain"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gen_tree_id"
  end

  add_index "nodes", "gen_tree_id", name: "index_nodes_on_gen_tree_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email"

end
