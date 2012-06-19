class CompanyAddressesController < ApplicationController
  def index
  @company_addresses = CompanyAddress.find_all_by_client_id(params[:client_id])
end


def new
  @company_address = CompanyAddress.new
end
 
def create
    @company_address =  CompanyAddress.new(params[:company_address])
    if @company_address.save
      redirect_to("/clients/#{@company_address.client_id}/requirements/incorps")
    else
      render :action => 'new'
    end
  end
  
  def show
   @company_address = CompanyAddress.find(params[:id])
  end
  
 def edit
      @company_address = CompanyAddress.find(params[:id])
 end
  
  def update
    @company_address = CompanyAddress.find(params[:id])
    if@company_address.update_attributes(params[:company_address])
      redirect_to("/clients/#{@company_address.client_id}/requirements/incorps")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @company_address = CompanyAddress.find(params[:id])
    @company_address.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to  "/clients/#{@company_address.client_id}/requirements/incorps"
  end
  
  def  toggled_status
    @company_address = CompanyAddress.find(params[:id])
    @company_address.status = !@company_address.status?
    @company_address.save!
    redirect_to "/clients/#{@company_address.client_id}/requirements/incorps"
  end
  
  
end
