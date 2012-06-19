class CreateShares < ActiveRecord::Migration
  def self.up
    create_table :shares do |t|
      t.integer :num_of_equity_share
      t.integer :total_no_of_equity_share
      t.integer :nominal_amt_of_equity_share
      t.integer :num_of_preference_share
      t.integer :total_amt_of_preference_share
      t.integer :nominal_amt_of_preference_share
      t.integer :authorised_cap
      t.integer :num_of_subscribed_equity_share
      t.integer :total_amt_of_subscribed_equity_share 
      t.integer :nominal_amt_of_per_subscribed_equity_share 
      t.integer :num_of_subscribed_preference_share
      t.integer :total_amt_of_subscribed_preference_share
      t.integer :subscribed_cap
      t.integer :nominal_amt_per_subscribed_preference_share
      t.integer :client_id
      t.timestamps
    end
  end

  def self.down
    drop_table :shares
  end
end
