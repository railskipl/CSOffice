class CompanyDirectorDesignationsController < ApplicationController

def index
  @company_director_designations = CompanyDirectorDesignation.find_all_by_client_id(params[:client_id])
end


def new
  @company_director_designation = CompanyDirectorDesignation.new
  if    current_user.role? :csadmin
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
end

 
def create
    @company_director_designation =  CompanyDirectorDesignation.new(params[:company_director_designation])
    if @company_director_designation.save
         CompanyDirectorDesignation.find_all_by_client_id(@company_director_designation.client_id).each do |f|
          if f.id != @company_director_designation.id
           f.update_attribute(:status , 0) 
          end
         end
      redirect_to("/clients/#{@company_director_designation.client_id}/requirements/incorps")
    else
      render :action => 'new'
    end
  end
  
  def show
   @company_director_designation = CompanyDirectorDesignation.find(params[:id])
  end
  
 def edit
      @company_director_designation = CompanyDirectorDesignation.find(params[:id])
      if    current_user.role? :csadmin
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
 end
  
  def update
    @company_director_designation = CompanyDirectorDesignation.find(params[:id])
    if @company_director_designation.update_attributes(params[:company_director_designation])
      redirect_to("/clients/#{@company_director_designation.client_id}/requirements/incorps")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @company_director_designation = CompanyDirectorDesignation.find(params[:id])
    @company_director_designation.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to "/clients/#{@company_director_designation.client_id}/requirements/incorps"
  end
  
  def  toggled_status
    @company_director_designation = CompanyDirectorDesignation.find(params[:id])
    @company_director_designation.status = !@company_director_designation.status?
    @company_director_designation.save!
    redirect_to "/clients/#{@company_director_designation.client_id}/requirements/incorps"
  end
  
end