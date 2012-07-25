class CreateFirstLetters < ActiveRecord::Migration
  def self.up
    create_table :first_letters do |t|
      t.string :company_name
      t.text :header
      t.text :stationary_name

      t.timestamps
    end
  end

  def self.down
    drop_table :first_letters
  end
end
