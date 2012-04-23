class CreateCompshares < ActiveRecord::Migration
  def self.up
    create_table :compshares do |t|
      t.integer  :din_id
      t.integer  :client_id
      t.date     :date
      t.integer  :status,            :default => 0
      t.date     :cessation_date
      t.timestamps
    end
    add_index :compshares, :din_id
    add_index :compshares, :client_id
  end

  def self.down
    drop_table :compshares
  end
end
