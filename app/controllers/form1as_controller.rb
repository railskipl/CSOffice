class Form1asController < ApplicationController

def index
  @form1as = Form1a.find_by_client_id(params[:client_id])
 
    
end


def new
  @form1a = Form1a.new
  
    if    current_user.role? :csadmin
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
end
 
def create
    @form1a = Form1a.new(params[:form1a])
    if @form1a.save
    
       redirect_to("/clients/#{@form1a.client_id}/requirements/form1a_details")
    else
      render :action => 'new'
    end
  end
  
  def show
    @form1a = Form1a.find_by_client_id(params[:client_id])
  end
  
 def edit
      @form1a = Form1a.find(params[:id])
       if    current_user.role? :csadmin
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.id))
    elsif current_user.role? :staff
       @din_curr = Din.find_all_by_contact_id(Contact.find_all_by_user_id(current_user.invitation.user_id))
    end
 end
  
  def update
    @form1a = Form1a.find(params[:id])
    if @form1a.update_attributes(params[:form1a])
    redirect_to("/clients/#{@form1a.client_id}/requirements/form1a_details")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @form1a = Form1a.find(params[:id])
    @form1a.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to form1as_path
  end
end
