class CreateNoticeAgendas < ActiveRecord::Migration
  def self.up
    create_table :notice_agendas do |t|
      t.integer :title
      t.integer :notice_id
      t.timestamps
    end
  end

  def self.down
    drop_table :notice_agendas
  end
end
