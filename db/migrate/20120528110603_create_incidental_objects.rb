class CreateIncidentalObjects < ActiveRecord::Migration
  def self.up
    create_table :incidental_objects do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end

  def self.down
    drop_table :incidental_objects
  end
end
