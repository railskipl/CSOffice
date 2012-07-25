class CreateCompanyMinutes < ActiveRecord::Migration
  def self.up
    create_table :company_minutes do |t|
      t.date :date
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :company_minutes
  end
end
