class AddDetailsToCompshares < ActiveRecord::Migration
  def self.up
    add_column :compshares, :is_director, :boolean
    add_column :compshares, :is_promoter, :boolean
    add_column :compshares, :cin, :string
    add_column :compshares, :name_of_company, :string
  end

  def self.down
   remove_column :compshares, :is_director
   remove_column :compshares, :is_promoter
   remove_column :compshares, :cin
   remove_column :compshares, :name_of_company
  end
end
