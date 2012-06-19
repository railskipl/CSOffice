class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.integer  :user_id
      t.integer  :project_id
      t.integer  :role_id            #:default => 2
      t.string   :email
      t.integer  :invited_user_id
      t.string   :token
      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
