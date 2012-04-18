class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :father_first_name
      t.string :father_middle_name
      t.string :father_last_name
      t.boolean :is_indian
      t.string :nationality
      t.date :dob
      t.boolean :gender
      t.string :birth_place
      t.string :pan_no
      t.string :voter_id
      t.string :passport_no
      t.string :driving_licence_no
      t.string :per_line1
      t.string :per_line2
      t.string :per_city
      t.string :per_state
      t.string :per_pin
      t.string :per_ISO
      t.string :per_country
      t.string :per_phone_no
      t.string :per_mobile_no
      t.string :per_fax_no
      t.string :per_email_id
      t.string :present_line1
      t.string :present_line2
      t.string :present_city
      t.string :present_state
      t.string :present_pin
      t.string :present_ISO
      t.string :present_country
      t.string :present_phone_no
      t.string :present_fax_no
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
