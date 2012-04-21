class CreateCompsharecins < ActiveRecord::Migration
  def self.up
    create_table :compsharecins do |t|
      t.boolean  :is_director,            :default => false
      t.boolean  :is_promotor,            :default => false
      t.integer  :cin
      t.string   :name_of_company
      t.integer  :company_shareholder_id
      t.integer  :client_id
      t.timestamps
    end
    add_index :compsharecins, :company_shareholder_id
    add_index :compsharecins, :client_id
  end

  def self.down
    drop_table :compsharecins
  end
end
