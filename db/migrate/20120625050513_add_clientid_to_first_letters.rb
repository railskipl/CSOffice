class AddClientidToFirstLetters < ActiveRecord::Migration
  def self.up
    add_column :first_letters, :client_id, :integer
  end

  def self.down
    remove_column :first_letters, :client_id
  end
end
