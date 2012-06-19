class Compdir < ActiveRecord::Base
 validates_uniqueness_of :client_id , :scope => :status,:scope => :din_id
 validates_uniqueness_of :din_id , :scope => :client_id
 
end
