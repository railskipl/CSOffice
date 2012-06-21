class CreateForm1as < ActiveRecord::Migration
  def self.up
    create_table :form1as do |t|
      t.integer :din_id
      t.string  :type_of_company
      t.string  :pvt_pub
      t.string  :catagories
      t.string  :sub_cat
      t.string  :proposed_company
      t.integer :state_id
      t.integer :roc_id
      t.integer :no_of_promoters
      t.integer :main_object_id
      t.string :is_consonance_with
      t.string :have_registered_trade_mark       
      t.text :furnish_particulars_trade_mark
      t.integer  :proposed_authorised_capital
      t.string  :proposed_authorised_capital_in_words
      t.integer :client_id
      t.timestamps
    end
  end

  def self.down
    drop_table :form1as
  end
end
