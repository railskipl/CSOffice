class CompanyMainObjectsController < ApplicationController

  def index
  @company_main_objects = CompanyMainObject.find_all_by_client_id(params[:client_id])
 # @moa_objects = MoaObject.find_all_by_user_id(current_user.id)
end


def new
  @company_main_object = CompanyMainObject.new
end
 
def create
    @company_main_object = CompanyMainObject.new(params[:company_main_object])
    if @company_main_object.save
      flash[:notice] = "Successfully created description."
       redirect_to("/clients/#{@company_main_object.client_id}/requirements/incorps/obj")
    else
      render :action => 'new'
    end
  end
  
  def show
    @company_main_object = CompanyMainObject.find(params[:id])
  end
  
 def edit
      @company_main_object = CompanyMainObject.find(params[:id])
      @moa_objects = MoaObject.find(:all)
 end
  
  def update
    @company_main_object = CompanyMainObject.find(params[:id])
    if @company_main_object.update_attributes(params[:company_main_object])
      flash[:notice] = "Successfully updated description."
      redirect_to ("/clients/#{@company_main_object.client_id}/requirements/incorps/company_main_objects")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @company_main_object = CompanyMainObject.find(params[:id])
    @company_main_object.destroy
    flash[:notice] = "Successfully destroyed description."
    redirect_to ("/clients/#{@company_main_object.client_id}/requirements/incorps/obj")
  end
  



end
