class CreateMoaObjects < ActiveRecord::Migration
  def self.up
    create_table :moa_objects do |t|
       t.string  :title
       t.text  :description
      t.timestamps
    end
  end

  def self.down
    drop_table :moa_objects
  end
end
