class AddAgendaIdToCompanyMinutes < ActiveRecord::Migration
  def self.up
    add_column :company_minutes, :agenda_id, :integer
  end

  def self.down
    remove_column :company_minutes, :agenda_id
  end
end
