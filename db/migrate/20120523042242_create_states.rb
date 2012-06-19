class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :state_name
      t.timestamps
    end
     create_default
  end

  def self.down
    drop_table :states
  end

def self.create_default
    clist = ["Andhra Pradesh",
         "Arunachal Pradesh",
         "Assam",
         "Bihar",
        "Chhattisgarh",
         "Goa",
         "Gujarat",
         "Haryana",
         "Himachal Pradesh",
         "Jammu and Kashmir",
         "Jharkhand",
         "Karnataka",
         "Kerala",
         "Madhya Pradesh",
         "Maharashtra",
         "Manipur",
         "Meghalaya",
         "Mizoram",
         "Nagaland",
         "Orissa",
         "Punjab",
         "Rajasthan",
         "Sikkim",
         "Tamil Nadu",
         "Uttar Pradesh",
         "Uttarakhand",
         "West Bengal"]
       
    clist.each do |c|
      @c1 = State.new
      @c1.state_name = c
      @c1.save
    end
  end
end

