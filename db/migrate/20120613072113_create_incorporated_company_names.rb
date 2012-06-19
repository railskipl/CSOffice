class CreateIncorporatedCompanyNames < ActiveRecord::Migration
  def self.up
    create_table :incorporated_company_names do |t|
  t.string :name
      t.string :cin
      t.date :doi
      t.integer :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :incorporated_company_names
  end
end
