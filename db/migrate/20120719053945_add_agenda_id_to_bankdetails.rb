class AddAgendaIdToBankdetails < ActiveRecord::Migration
  def self.up
    add_column :bankdetails, :agenda_id, :integer
  end

  def self.down
    remove_column :bankdetails, :agenda_id
  end
end
