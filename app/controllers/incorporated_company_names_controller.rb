class IncorporatedCompanyNamesController < ApplicationController
  
def index
  @incorporated_company_names = IncorporatedCompanyName.find_by_client_id(params[:client_id])
 
    
end


def new
  @incorporated_company_name = IncorporatedCompanyName.new
  
   
end
 
def create
    @incorporated_company_name = IncorporatedCompanyName.new(params[:incorporated_company_name])
    if @incorporated_company_name.save
    
       redirect_to("/clients/#{@incorporated_company_name.client_id}/comp_incorps")
    else
      render :action => 'new'
    end
  end
  
  def show
    @incorporated_company_name = IncorporatedCompanyName.find_by_client_id(params[:client_id])
  end
  
 def edit
      @incorporated_company_name = IncorporatedCompanyName.find(params[:id])
      
 end
  
  def update
    @incorporated_company_name = IncorporatedCompanyName.find(params[:id])
    if @incorporated_company_name.update_attributes(params[:incorporated_company_name])
    redirect_to("/clients/#{@incorporated_company_name.client_id}/comp_incorps")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @incorporated_company_name = IncorporatedCompanyName.find(params[:id])
    @incorporated_company_name.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to incorporated_company_names_path
  end
end
