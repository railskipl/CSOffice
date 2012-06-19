class Clientuser < ActiveRecord::Base
  validates_uniqueness_of :client_id , :scope => :recipient
end
