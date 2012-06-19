class CreateCompanyDirectorDesignations < ActiveRecord::Migration
  def self.up
    create_table :company_director_designations do |t|
      t.integer :din_id
      t.boolean :is_chairman 
      t.boolean :is_executive_director
      t.boolean :is_non_executive_director
      t.boolean :is_managing_director
      t.boolean :is_wholetime_director
      t.boolean :is_joint_managing_director
      t.boolean :is_executive_chairman
      t.boolean :is_addtional_director
      t.date    :date
      t.date    :expiry
      t.integer :client_id
      t.boolean :status 
      t.timestamps
    end
  end

  def self.down
    drop_table :company_director_designations
  end
end
