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

ActiveRecord::Schema.define(:version => 20120615064138) do

  create_table "clients", :force => true do |t|
    t.string   "client_name"
    t.string   "applicant_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "clients_users", :id => false, :force => true do |t|
    t.integer "client_id"
    t.integer "user_id"
  end

  create_table "clientusers", :force => true do |t|
    t.integer  "client_id"
    t.integer  "recipient"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "district"
    t.string   "state"
    t.string   "country"
    t.integer  "pin_code"
    t.string   "email_id"
    t.string   "name_proposed_roc"
    t.string   "police_station_name"
    t.string   "police_station_line1"
    t.string   "police_station_line2"
    t.string   "police_station_city"
    t.string   "police_station_state"
    t.integer  "police_station_pin_code"
    t.string   "client_id"
    t.boolean  "status"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_director_designations", :force => true do |t|
    t.integer  "din_id"
    t.boolean  "is_chairman"
    t.boolean  "is_executive_director"
    t.boolean  "is_non_executive_director"
    t.boolean  "is_managing_director"
    t.boolean  "is_wholetime_director"
    t.boolean  "is_joint_managing_director"
    t.boolean  "is_executive_chairman"
    t.boolean  "is_addtional_director"
    t.date     "date"
    t.date     "expiry"
    t.integer  "client_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_incidental_objects", :force => true do |t|
    t.string   "description"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_main_objects", :force => true do |t|
    t.string   "description"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_names", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_other_objects", :force => true do |t|
    t.string   "description"
    t.integer  "client_id"
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

  create_table "compshares", :force => true do |t|
    t.integer  "din_id"
    t.integer  "client_id"
    t.date     "date"
    t.integer  "status"
    t.date     "cessation_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_director"
    t.boolean  "is_promoter"
    t.string   "cin"
    t.string   "name_of_company"
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

  create_table "corporates", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "occupation"
    t.string   "category"
    t.integer  "shareholder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.integer  "user_id"
  end

  create_table "divisions", :force => true do |t|
    t.string   "Description"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "form1as", :force => true do |t|
    t.integer  "din_id"
    t.string   "type_of_company"
    t.string   "pvt_pub"
    t.string   "catagories"
    t.string   "sub_cat"
    t.string   "proposed_company"
    t.integer  "state_id"
    t.integer  "roc_id"
    t.integer  "no_of_promoters"
    t.integer  "main_object_id"
    t.boolean  "is_consonance_with"
    t.boolean  "have_registered_trade_mark"
    t.text     "furnish_particulars_trade_mark"
    t.integer  "proposed_authorised_capital"
    t.string   "proposed_authorised_capital_in_words"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidental_objects", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "incorporated_company_names", :force => true do |t|
    t.string   "name"
    t.string   "cin"
    t.date     "doi"
    t.integer  "client_id"
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

  create_table "moa_objects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "proposed_names", :force => true do |t|
    t.string   "pro_name"
    t.string   "significance_of_name"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rocs", :force => true do |t|
    t.string   "roc_name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "shares", :force => true do |t|
    t.integer  "num_of_equity_share"
    t.integer  "total_no_of_equity_share"
    t.integer  "nominal_amt_of_equity_share"
    t.integer  "num_of_preference_share"
    t.integer  "total_amt_of_preference_share"
    t.integer  "nominal_amt_of_preference_share"
    t.integer  "authorised_cap"
    t.integer  "num_of_subscribed_equity_share"
    t.integer  "total_amt_of_subscribed_equity_share"
    t.integer  "nominal_amt_of_per_subscribed_equity_share"
    t.integer  "num_of_subscribed_preference_share"
    t.integer  "total_amt_of_subscribed_preference_share"
    t.integer  "subscribed_cap"
    t.integer  "nominal_amt_per_subscribed_preference_share"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
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
