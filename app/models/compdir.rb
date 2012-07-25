class Compdir < ActiveRecord::Base
 
 belongs_to :notice,:class_name => "Notice", :foreign_key => :din_id
 
 validates_uniqueness_of :client_id , :scope => :status,:scope => :din_id
 
 validates_uniqueness_of :din_id , :scope => :client_id
 
end
