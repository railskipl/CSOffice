class CreateClientusers < ActiveRecord::Migration
  def self.up
    create_table :clientusers do |t|
      t.integer :client_id
      t.integer :recipient

      t.timestamps
    end
  end

  def self.down
    drop_table :clientusers
  end
end
