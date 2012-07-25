class MinGeneratorsController < ApplicationController
  def index
   @events = CompanyMinute.find(:all, :conditions => ["date between ? and ?",
         Date.today - 2.months, Date.today])

  end
end
