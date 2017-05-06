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

ActiveRecord::Schema.define(version: 20170409060850) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "container_items", force: :cascade do |t|
    t.integer  "container_id_id"
    t.integer  "item_id_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["container_id_id"], name: "index_container_items_on_container_id_id"
    t.index ["item_id_id"], name: "index_container_items_on_item_id_id"
  end

  create_table "containers", force: :cascade do |t|
    t.text     "type"
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.text     "name"
    t.integer  "creator_id"
    t.date     "create_since"
    t.integer  "administrator_id"
    t.text     "description"
    t.integer  "member_container_id"
    t.boolean  "privacy"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["administrator_id"], name: "index_groups_on_administrator_id"
    t.index ["creator_id"], name: "index_groups_on_creator_id"
    t.index ["member_container_id"], name: "index_groups_on_member_container_id"
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "bio"
    t.text     "location"
    t.date     "member_since"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
