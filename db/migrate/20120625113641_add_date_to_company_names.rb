class AddDateToCompanyNames < ActiveRecord::Migration
  def self.up
    add_column :company_names, :date, :date
  end

  def self.down
    remove_column :company_names, :date
  end
end
