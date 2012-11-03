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

ActiveRecord::Schema.define(:version => 20121103144823) do

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                   :default => false
    t.string   "school_affliation"
    t.string   "education_level"
    t.boolean  "accounting"
    t.boolean  "admin_support"
    t.boolean  "advertising"
    t.boolean  "agriculture"
    t.boolean  "architecture"
    t.boolean  "banking"
    t.boolean  "chemistry"
    t.boolean  "communications"
    t.boolean  "construction"
    t.boolean  "consulting"
    t.boolean  "customer_service"
    t.boolean  "education"
    t.boolean  "engineering"
    t.boolean  "environmental"
    t.boolean  "finance"
    t.boolean  "food_beverage"
    t.boolean  "foreign_language"
    t.boolean  "fundraising"
    t.boolean  "government"
    t.boolean  "graphic_design"
    t.boolean  "healthcare"
    t.boolean  "hospitality"
    t.boolean  "human_resources"
    t.boolean  "information_tech"
    t.boolean  "international_relations"
    t.boolean  "investment_banking"
    t.boolean  "journalism"
    t.boolean  "legal"
    t.boolean  "logistics"
    t.boolean  "management"
    t.boolean  "marketing"
    t.boolean  "manufacturing"
    t.boolean  "merchandising"
    t.boolean  "non_profit"
    t.boolean  "nutrition"
    t.boolean  "operations"
    t.boolean  "performing_arts"
    t.boolean  "pharmaceuticals"
    t.boolean  "physics"
    t.boolean  "public_relations"
    t.boolean  "real_estate"
    t.boolean  "sales"
    t.boolean  "social_services"
    t.boolean  "transportation"
    t.string   "job_level"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "document"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
