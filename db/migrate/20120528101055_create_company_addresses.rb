class CreateCompanyAddresses < ActiveRecord::Migration
  def self.up
    create_table :company_addresses do |t|
       t.string :line1
       t.string :line2
       t.string :city
       t.string :district 
       t.string :state
       t.string :country
      t.integer :pin_code
       t.string :email_id
       t.string :name_proposed_roc
       t.string :police_station_name
       t.string :police_station_line1
       t.string :police_station_line2
       t.string :police_station_city
       t.string :police_station_state
       t.integer :police_station_pin_code
       t.string  :client_id
       t.boolean :status
       t.date    :date          
      t.timestamps
    end
  end

  def self.down
    drop_table :company_addresses
  end
end
