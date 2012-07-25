class Bankdetail < ActiveRecord::Base
  validates_uniqueness_of :notice_id
end
