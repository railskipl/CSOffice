class AddIdToDins < ActiveRecord::Migration
  def self.up
    add_column :dins, :user_id, :string
  end

  def self.down
    remove_column :dins, :user_id
  end
end
