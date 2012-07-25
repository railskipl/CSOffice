class CreateNotices < ActiveRecord::Migration
  def self.up
    create_table :notices do |t|
      t.string :meeting_id
      t.string :company_name
      t.datetime :date
      t.string :place
      t.text :issue
      t.integer :client_id
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :notices
  end
end
