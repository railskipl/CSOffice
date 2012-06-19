class AddSentAtToInvitations < ActiveRecord::Migration
  def self.up
    add_column :invitations, :sent_at, :datetime
  end

  def self.down
    remove_column :invitations, :sent_at
  end
end
