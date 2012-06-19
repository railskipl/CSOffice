class UsersHaveAndBelongsToManyClients < ActiveRecord::Migration
  def self.up
    create_table   :clients_users, :id => false do |t|
        t.references :client, :user
  end

  def self.down
    drop_table     :clients_users
  end
  end
end
