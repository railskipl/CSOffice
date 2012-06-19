class Form1aDetailsController < ApplicationController
  def index
      redirect_to("/dashboard",:notice => 'You cannot access this page') unless Client.find(params[:client_id]).user_id == current_user.id
     @form1as = Form1a.find_by_client_id(params[:client_id])
     
     
     @form1a=  Form1a.new
       @con =  CompanyName.find_all_by_client_id(params[:client_id])

      @proposed_name = ProposedName.new
      @proposed_names = ProposedName.find_all_by_client_id(params[:client_id])
      @company_name = CompanyName.new
      @company_names = CompanyName.find_all_by_client_id(params[:client_id])
   
    if    current_user.role? :csadmin
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
      def show
    @form1a = Form1a.find_by_client_id(params[:client_id])
  end
   
     
  end
  
  
end
