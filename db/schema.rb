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

ActiveRecord::Schema.define(version: 20160105005207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string   "amenity_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "amenities_listings", id: false, force: :cascade do |t|
    t.integer "amenity_id", null: false
    t.integer "listing_id", null: false
  end

  add_index "amenities_listings", ["amenity_id", "listing_id"], name: "index_amenities_listings_on_amenity_id_and_listing_id", using: :btree
  add_index "amenities_listings", ["listing_id", "amenity_id"], name: "index_amenities_listings_on_listing_id_and_amenity_id", using: :btree

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "email_lists", force: :cascade do |t|
    t.string "email", default: "", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "address",                default: "", null: false
    t.string   "city",                   default: "", null: false
    t.string   "state",                  default: "", null: false
    t.string   "borough",                default: "", null: false
    t.integer  "zip",                                 null: false
    t.string   "building_name",          default: "", null: false
    t.string   "apt_num",                default: "", null: false
    t.string   "room_type",              default: "", null: false
    t.integer  "bedroom"
    t.integer  "bathroom"
    t.string   "property_type"
    t.integer  "area"
    t.string   "minimum_stay"
    t.date     "move_in"
    t.text     "the_space"
    t.text     "the_neighborhood"
    t.boolean  "furnished"
    t.datetime "list_date"
    t.boolean  "active"
    t.datetime "inactive_date"
    t.datetime "modified_date"
    t.integer  "price"
    t.string   "rent_or_sublease",       default: "", null: false
    t.integer  "guest_capacity"
    t.integer  "user_id"
    t.string   "floor_map_file_name"
    t.string   "floor_map_content_type"
    t.integer  "floor_map_file_size"
    t.datetime "floor_map_updated_at"
  end

  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "listings_restrictions", id: false, force: :cascade do |t|
    t.integer "listing_id",     null: false
    t.integer "restriction_id", null: false
  end

  add_index "listings_restrictions", ["listing_id", "restriction_id"], name: "index_listings_restrictions_on_listing_id_and_restriction_id", using: :btree
  add_index "listings_restrictions", ["restriction_id", "listing_id"], name: "index_listings_restrictions_on_restriction_id_and_listing_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.boolean  "read",            default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "restrictions", force: :cascade do |t|
    t.string   "restriction_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname",              default: "",    null: false
    t.string   "middlename",             default: "",    null: false
    t.string   "lastname",               default: "",    null: false
    t.string   "username",               default: "",    null: false
    t.string   "address",                default: "",    null: false
    t.string   "city",                   default: "",    null: false
    t.string   "state",                  default: "",    null: false
    t.integer  "zip",                                    null: false
    t.string   "phonenumber",            default: "",    null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "is_lister",              default: false, null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,     null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
