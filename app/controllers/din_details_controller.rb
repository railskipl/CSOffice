class DinDetailsController < ApplicationController
  def index
      redirect_to("/dashboard",:notice => 'You cannot access this page') unless Client.find(params[:client_id]).user_id == current_user.id ||Clientuser.find_by_client_id(params[:client_id]).recipient == current_user.id
   @contacts =  Compdir.find_all_by_client_id(params[:client_id]) 
   @con =  Compshare.find_all_by_client_id(params[:client_id])

    @compdir = Compdir.new
    if    current_user.role? :csadmin
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
    
    @compshare = Compshare.new
    if    current_user.role? :csadmin
       @din_currshr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_currshr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
   
  end
 
end
