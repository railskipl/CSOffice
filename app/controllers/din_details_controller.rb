class DinDetailsController < ApplicationController
  def index
    
    @compdir = Compdir.new
    if    current_user.role? :csadmin
       @clients  = Client.find_all_by_user_id(current_user.id)
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @clients  = Client.find_all_by_user_id(current_user.invitation.user_id)
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
    
    @compshare = Compshare.new
    if    current_user.role? :csadmin
       @clientshr  = Client.find_all_by_user_id(current_user.id)
       @din_currshr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @clientsshr  = Client.find_all_by_user_id(current_user.invitation.user_id)
       @din_currshr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
   
  end
end
