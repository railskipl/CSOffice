class AddDetailsToCompanyMinutes < ActiveRecord::Migration
  def self.up
    add_column :company_minutes, :client_id, :integer
    add_column :company_minutes, :notice_id, :integer
  end

  def self.down
    remove_column :company_minutes, :notice_id
    remove_column :company_minutes, :client_id
  end
end
