class CreateCompanyIncidentalObjects < ActiveRecord::Migration
  def self.up
    create_table :company_incidental_objects do |t|
      t.string   :description
      t.integer  :client_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :company_incidental_objects
  end
end
