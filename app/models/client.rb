class Client < ActiveRecord::Base
  has_one :form1a
  has_one :incorporated_company_name
   has_one :company_name
  belongs_to :user
  attr_accessible :client_id, :user_id,:client_name,:applicant_name
end
