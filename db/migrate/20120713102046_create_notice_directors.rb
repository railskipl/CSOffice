class CreateNoticeDirectors < ActiveRecord::Migration
  def self.up
    create_table :notice_directors do |t|
      t.integer :din_id
      t.integer :notice_id
      t.timestamps
    end
  end

  def self.down
    drop_table :notice_directors
  end
end
