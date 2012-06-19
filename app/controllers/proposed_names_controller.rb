class ProposedNamesController < ApplicationController
  def index
     @proposed_names = ProposedName.find_all_by_client_id(params[:client_id])
     
end


def new
  @proposed_name = ProposedName.new
  
   
end
 
def create
    @proposed_name = ProposedName.new(params[:proposed_name])
       
    if @proposed_name.save
        redirect_to("/clients/#{@proposed_name.client_id}/requirements/form1a_details")
      else
        render :action => 'new'
      end
  
  end
  def show
    @proposed_name = ProposedName.find(params[:id])
  end
  
 def edit
      @proposed_name = ProposedName.find(params[:id])
      
 end
  
  def update
    @proposed_name = ProposedName.find(params[:id])
    if @proposed_name.update_attributes(params[:proposed_name])
      # CompanyName.find_by_client_id(params[:client_id]).each do |a|
        # a.update_attribute(:name,@proposed_name.name)
      # end
      flash[:notice] = "Successfully updated ProposedNames."
     redirect_to("/clients/#{@proposed_name.client_id}/requirements/form1a_details")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @proposed_name = ProposedName.find(params[:id])
    @proposed_name.destroy
    flash[:notice] = "Successfully destroyed ProposedNames."
     redirect_to("/clients/#{@proposed_name.client_id}/requirements/form1a_details")
  end
  
end
