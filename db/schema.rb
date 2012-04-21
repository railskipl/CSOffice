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

ActiveRecord::Schema.define(:version => 20120418072811) do

  create_table "clients", :force => true do |t|
    t.string   "client_name"
    t.string   "applicant_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compdirs", :force => true do |t|
    t.integer  "din_id"
    t.integer  "client_id"
    t.date     "date"
    t.integer  "status",         :default => 0
    t.date     "cessation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compdirs", ["client_id"], :name => "index_compdirs_on_client_id"
  add_index "compdirs", ["din_id"], :name => "index_compdirs_on_din_id"

  create_table "compsharecins", :force => true do |t|
    t.boolean  "is_director",            :default => false
    t.boolean  "is_promotor",            :default => false
    t.integer  "cin"
    t.string   "name_of_company"
    t.integer  "company_shareholder_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compsharecins", ["client_id"], :name => "index_compsharecins_on_client_id"
  add_index "compsharecins", ["company_shareholder_id"], :name => "index_compsharecins_on_company_shareholder_id"

  create_table "compshares", :force => true do |t|
    t.integer  "din_id"
    t.integer  "client_id"
    t.date     "date"
    t.integer  "status",         :default => 0
    t.date     "cessation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compshares", ["client_id"], :name => "index_compshares_on_client_id"
  add_index "compshares", ["din_id"], :name => "index_compshares_on_din_id"

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "father_first_name"
    t.string   "father_middle_name"
    t.string   "father_last_name"
    t.boolean  "is_indian"
    t.string   "nationality"
    t.date     "dob"
    t.boolean  "gender"
    t.string   "birth_place"
    t.string   "pan_no"
    t.string   "voter_id"
    t.string   "passport_no"
    t.string   "driving_licence_no"
    t.string   "per_line1"
    t.string   "per_line2"
    t.string   "per_city"
    t.string   "per_state"
    t.string   "per_pin"
    t.string   "per_ISO"
    t.string   "per_country"
    t.string   "per_phone_no"
    t.string   "per_mobile_no"
    t.string   "per_fax_no"
    t.string   "per_email_id"
    t.string   "present_line1"
    t.string   "present_line2"
    t.string   "present_city"
    t.string   "present_state"
    t.string   "present_pin"
    t.string   "present_ISO"
    t.string   "present_country"
    t.string   "present_phone_no"
    t.string   "present_fax_no"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dins", :force => true do |t|
    t.integer  "contact_id"
    t.string   "din_no"
    t.boolean  "digital_signature"
    t.date     "expiry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "role_id"
    t.string   "email"
    t.integer  "invited_user_id"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "sent_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "invitation_id"
    t.integer  "invitation_limit"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
