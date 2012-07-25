class CompanyMinute < ActiveRecord::Base

validates_uniqueness_of :agenda_id , :scope => :notice_id
 
end
