class CreateRocs < ActiveRecord::Migration
  def self.up
    create_table :rocs do |t|
      t.string :roc_name
      t.integer :state_id
      t.timestamps
    end
  end

  def self.down
    drop_table :rocs
  end
end
