class AddDetailsToBankdetails < ActiveRecord::Migration
  def self.up
    add_column :bankdetails, :client_id, :integer
    add_column :bankdetails, :notice_id, :integer
  end

  def self.down
    remove_column :bankdetails, :notice_id
    remove_column :bankdetails, :client_id
  end
end
