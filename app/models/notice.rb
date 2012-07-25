class Notice < ActiveRecord::Base
  has_many :notice_agendas , :dependent => :destroy
  has_many :notice_directors , :dependent => :destroy
  
  accepts_nested_attributes_for :notice_agendas, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true
  
  accepts_nested_attributes_for :notice_directors, :reject_if => lambda { |a| a[:din_id].blank? }, :allow_destroy => true


end
