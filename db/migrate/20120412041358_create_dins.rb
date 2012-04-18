class CreateDins < ActiveRecord::Migration
  def self.up
    create_table :dins do |t|
      t.integer :contact_id
      t.string :din_no
      t.boolean :digital_signature
      t.date :expiry

      t.timestamps
    end
  end

  def self.down
    drop_table :dins
  end
end
