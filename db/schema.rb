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

ActiveRecord::Schema.define(version: 20140402105657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "abouts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cart_items", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.integer  "cartable_id"
    t.string   "cartable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "cart_id"
    t.float    "price",         default: 0.0
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cart_items", ["cart_id"], name: "index_cart_items_on_cart_id", using: :btree
  add_index "cart_items", ["cartable_id"], name: "index_cart_items_on_cartable_id", using: :btree
  add_index "cart_items", ["cartable_type"], name: "index_cart_items_on_cartable_type", using: :btree
  add_index "cart_items", ["name"], name: "index_cart_items_on_name", using: :btree
  add_index "cart_items", ["owner_id"], name: "index_cart_items_on_owner_id", using: :btree
  add_index "cart_items", ["owner_type"], name: "index_cart_items_on_owner_type", using: :btree
  add_index "cart_items", ["state"], name: "index_cart_items_on_state", using: :btree

  create_table "carts", force: true do |t|
    t.string   "session_id"
    t.string   "state"
    t.integer  "shopper_id"
    t.string   "shopper_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["shopper_id"], name: "index_carts_on_shopper_id", using: :btree
  add_index "carts", ["shopper_type"], name: "index_carts_on_shopper_type", using: :btree
  add_index "carts", ["state"], name: "index_carts_on_state", using: :btree

  create_table "contacts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ProductName"
    t.integer  "quantity"
    t.integer  "price"
    t.string   "image_url"
  end

end
