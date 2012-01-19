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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120117121803) do

  create_table "businesses", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "zipcode"
    t.string   "state"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["business_id"], :name => "index_contacts_on_business_id"

  create_table "items", :force => true do |t|
    t.string   "item_name"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["order_id"], :name => "index_items_on_order_id"

  create_table "orders", :force => true do |t|
    t.string   "order_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
