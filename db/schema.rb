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

ActiveRecord::Schema.define(:version => 20120927162745) do

  create_table "categories", :force => true do |t|
    t.string   "category",   :limit => 80, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dictionaries", :force => true do |t|
    t.string   "word",       :limit => 100, :null => false
    t.text     "text",       :limit => 400, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", :force => true do |t|
    t.text     "text",       :limit => 1500, :null => false
    t.text     "choose",     :limit => 800
    t.string   "answer",     :limit => 50
    t.text     "hint",       :limit => 1500
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relations", :force => true do |t|
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quiz_id"
  end

  add_index "relations", ["category_id"], :name => "index_relations_on_category_id"
  add_index "relations", ["quiz_id"], :name => "index_relations_on_quiz_id"
  add_index "relations", ["sub_category_id"], :name => "index_relations_on_sub_category_id"

  create_table "sub_categories", :force => true do |t|
    t.integer  "category_id"
    t.string   "sub_category", :limit => 80, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_categories", ["category_id"], :name => "index_sub_categories_on_category_id"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
