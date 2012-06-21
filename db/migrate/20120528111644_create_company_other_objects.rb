class CreateCompanyOtherObjects < ActiveRecord::Migration
  def self.up
    create_table :company_other_objects do |t|
      t.text :description
      t.integer :client_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :company_other_objects
  end
end
