class FirstLetter < ActiveRecord::Base
  validates_uniqueness_of :client_id
end
