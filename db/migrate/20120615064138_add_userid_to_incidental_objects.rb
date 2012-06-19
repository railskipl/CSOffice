class AddUseridToIncidentalObjects < ActiveRecord::Migration
  def self.up
         add_column :incidental_objects, :user_id, :integer

  end

  def self.down
        remove_column :incidental_objects, :user_id

  end
end
