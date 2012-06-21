class CompanyOtherObjectsController < ApplicationController

  def index
  @company_other_objects = CompanyOtherObject.find_all_by_client_id(params[:client_id])

end


def new
  @company_other_object = CompanyOtherObject.new
end
 
def create
    @company_other_object = CompanyOtherObject.new(params[:company_other_object])
    if @company_other_object.save
      flash[:notice] = "Successfully created discription."
       redirect_to("/clients/#{@company_other_object.client_id}/requirements/incorps/company_other_objects")
    else
      render :action => 'new'
    end
  end
  
  def show
    @company_other_object = CompanyOtherObject.find(params[:id])
  end
  
 def edit
      @company_other_object = CompanyOtherObject.find(params[:id])
      @moa_objects = MoaObject.find(:all)
 end
  
  def update
    @company_other_object = CompanyOtherObject.find(params[:id])
    if @company_other_object.update_attributes(params[:company_other_object])
      flash[:notice] = "Successfully updated discription."
      redirect_to ("/clients/#{@company_other_object.client_id}/requirements/incorps/company_other_objects")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @company_other_object = CompanyOtherObject.find(params[:id])
    @company_other_object.destroy
    flash[:notice] = "Successfully destroyed discription."
    redirect_to ("/clients/#{@company_other_object.client_id}/requirements/incorps/company_other_objects")
  end
  


end

