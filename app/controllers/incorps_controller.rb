class IncorpsController < ApplicationController
   def index
    redirect_to("/dashboard",:notice => 'You cannot access this page') unless ( Client.find(params[:client_id]).user_id == current_user.id ) || (Clientuser.find_by_client_id(params[:client_id]).recipient == current_user.id )
     @shares = Share.find_by_client_id(params[:client_id])
     @share =  Share.new
     @company_address = CompanyAddress.new
     @company_addresses = CompanyAddress.find_all_by_client_id(params[:client_id])
     @company_director_designation = CompanyDirectorDesignation.new
     @company_director_designations = CompanyDirectorDesignation.find_all_by_client_id(params[:client_id])
     @moa_object = MoaObject.new
     @moa_objects = MoaObject.find_all_by_user_id(current_user.id)
     @company_main_object = CompanyMainObject.new
     @company_incidental_object =CompanyIncidentalObject.new
     @company_other_object =CompanyOtherObject.new
     @incidental_objects = IncidentalObject.find_all_by_user_id(current_user.id)
     @incidental_object = IncidentalObject.new
     
     if    current_user.role? :csadmin
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
     
   end 
   
   
   def show
     @share  = Share.find_all_by_client_id(params[:client_id])
   end
  

  
end