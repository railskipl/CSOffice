class CreateCompdirs < ActiveRecord::Migration
  def self.up
    create_table :compdirs do |t|
      t.integer  :din_id
      t.integer  :client_id
      t.date     :date
      t.integer  :status,            :default => 0
      t.date     :cessation_date
      t.timestamps
    end
    add_index :compdirs, :din_id
    add_index :compdirs, :client_id
  end

  def self.down
    drop_table :compdirs
  end
end
