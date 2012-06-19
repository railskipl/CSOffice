class CreateCorporates < ActiveRecord::Migration
  def self.up
    create_table :corporates do |t|
      t.string :name
      t.text :address
      t.string :occupation
      t.string :category
      t.integer :shareholder_id

      t.timestamps
    end
  end

  def self.down
    drop_table :corporates
  end
end
