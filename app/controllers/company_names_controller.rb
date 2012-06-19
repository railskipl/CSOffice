class CompanyNamesController < ApplicationController
   
def index
  @company_names = CompanyName.find_all_by_client_id(params[:client_id])
end


def new
  @company_name = CompanyName.new
end
 
def create
    @company_name =  CompanyName.new(params[:company_name])
    if @company_name.save
      
        CompanyName.find_all_by_client_id(@company_name.client_id).each do |f|
          if f.id != @company_name.id
           f.update_attribute(:status , 0) 
          end
         end
        
      redirect_to("/clients/#{@company_name.client_id}/requirements/form1a_details")
    else
      render :action => 'new'
    end
  


  end
  
  def show
   @company_name = CompanyName.find(params[:id])
  end
  
 def edit
      @company_name = CompanyName.find(params[:id])
 end
  
  def update
    @company_name = CompanyName.find(params[:id])
    if @company_name.update_attributes(params[:company_name])
       
      redirect_to("/clients/#{@company_name.client_id}/requirements/form1a_details")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @company_name = CompanyName.find(params[:id])
    @company_name.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to("/clients/#{@company_name.client_id}/requirements/form1a_details")
  end
  def  toggled_status
    @company_name = CompanyName.find(params[:id])
    @company_name.status = !@company_name.status?
    @company_name.save!
    redirect_to("/clients/#{@company_name.client_id}/requirements/form1a_details")
  end
  
  end
