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

ActiveRecord::Schema.define(:version => 20111221053222) do

  create_table "bible_books", :force => true do |t|
    t.string    "title",        :limit => 22, :default => "", :null => false
    t.string    "abbreviation", :limit => 8,  :default => "", :null => false
    t.timestamp "updated_at",                                 :null => false
    t.timestamp "created_at",                                 :null => false
  end

  create_table "bible_passages", :force => true do |t|
    t.integer  "bible_verse_id"
    t.integer  "verse_count"
    t.integer  "sort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bible_passages", ["bible_verse_id"], :name => "index_bible_passages_on_bible_verse_id"

  create_table "bible_translations", :force => true do |t|
    t.string    "title",        :limit => 100, :default => "", :null => false
    t.string    "abbreviation", :limit => 4,   :default => "", :null => false
    t.timestamp "updated_at",                                  :null => false
    t.timestamp "created_at",                                  :null => false
  end

  add_index "bible_translations", ["abbreviation"], :name => "lds_org", :unique => true

  create_table "bible_verses", :force => true do |t|
    t.boolean   "bible_translation_id",              :default => false, :null => false
    t.integer   "bible_book_id",        :limit => 1, :default => 0,     :null => false
    t.integer   "chapter",              :limit => 1, :default => 0,     :null => false
    t.integer   "verse",                :limit => 1, :default => 0,     :null => false
    t.text      "text",                                                 :null => false
    t.timestamp "updated_at",                                           :null => false
    t.timestamp "created_at",                                           :null => false
  end

  add_index "bible_verses", ["bible_book_id"], :name => "verses_book_id"
  add_index "bible_verses", ["bible_translation_id"], :name => "verses_volume_id"
  add_index "bible_verses", ["chapter", "verse"], :name => "verses_chapter_verse"
  add_index "bible_verses", ["chapter"], :name => "chapter"

  create_table "hymnals", :force => true do |t|
    t.string   "name"
    t.string   "editor"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hymns", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "tune"
    t.string   "composer"
    t.string   "copyright"
    t.integer  "year"
    t.integer  "hymnal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hymns", ["hymnal_id"], :name => "index_hymns_on_hymnal_id"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "volunteers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip_code"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
