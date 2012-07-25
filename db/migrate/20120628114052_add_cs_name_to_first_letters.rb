class AddCsNameToFirstLetters < ActiveRecord::Migration
  def self.up
     add_column :first_letters, :cs_name, :string
  end

  def self.down
     remove_column :first_letters,:cs_name
  end
end
