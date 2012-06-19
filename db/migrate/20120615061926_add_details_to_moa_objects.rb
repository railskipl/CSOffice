class AddDetailsToMoaObjects < ActiveRecord::Migration
  def self.up
     add_column :moa_objects, :user_id, :integer
  end

  def self.down
    remove_column :moa_objects, :user_id
  end
end
