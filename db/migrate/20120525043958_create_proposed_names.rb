class CreateProposedNames < ActiveRecord::Migration
  def self.up
    create_table :proposed_names do |t|
      t.string   :pro_name
      t.string   :significance_of_name
      t.integer  :client_id
      t.timestamps
    end
  end

  def self.down
    drop_table :proposed_names
  end
end
