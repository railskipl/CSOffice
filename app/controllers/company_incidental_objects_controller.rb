class CompanyIncidentalObjectsController < ApplicationController
  def index
  @company_incidental_objects = CompanyIncidentalObject.find_all_by_client_id(params[:client_id])
  @incidental_objects = IncidentalObject.find(:all)
end


def new
  @company_incidental_object =CompanyIncidentalObject.new
end
 
def create
    @company_incidental_object = CompanyIncidentalObject.new(params[:company_incidental_object])
    if @company_incidental_object.save
      flash[:notice] = "Successfully created discription."

       redirect_to("/clients/#{@company_incidental_object.client_id}/requirements/incorps/company_incidental_objects")

       redirect_to("/clients/#{@company_incidental_object.client_id}/requirements/incorps/obj")

    else
      render :action => 'new'
    end
  end
  
  def show
    @company_incidental_object = CompanyIncidentalObject.find(params[:id])
  end
  
 def edit
      @company_incidental_object = CompanyIncidentalObject.find(params[:id])
        @incidental_objects = IncidentalObject.find(:all)
 end
  
  def update
    @company_incidental_object = CompanyIncidentalObject.find(params[:id])
    if @company_incidental_object.update_attributes(params[:company_incidental_object])
      flash[:notice] = "Successfully updated discription."

      redirect_to ("/clients/#{@company_incidental_object.client_id}/requirements/incorps/company_incidental_objects")

      redirect_to ("/clients/#{@company_incidental_object.client_id}/requirements/incorps/obj")

    else
      render :action => 'edit'
    end
  end  
    def destroy
    @company_incidental_object = CompanyIncidentalObject.find(params[:id])
    @company_incidental_object.destroy
    flash[:notice] = "Successfully destroyed discription."

      redirect_to ("/clients/#{@company_incidental_object.client_id}/requirements/incorps/company_incidental_objects")

      redirect_to ("/clients/#{@company_incidental_object.client_id}/requirements/incorps/obj")

  end
  
  
  
  
  
end
