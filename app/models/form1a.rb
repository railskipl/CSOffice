class Form1a < ActiveRecord::Base
  belongs_to :client
  validates_uniqueness_of :client_id
end
