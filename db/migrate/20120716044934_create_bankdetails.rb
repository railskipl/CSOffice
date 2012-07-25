class CreateBankdetails < ActiveRecord::Migration
  def self.up
    create_table :bankdetails do |t|
      t.string :city
      t.string :bank

      t.timestamps
    end
  end

  def self.down
    drop_table :bankdetails
  end
end
