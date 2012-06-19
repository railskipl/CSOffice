class SharesController < ApplicationController
   
def index
  @shares = Share.find_by_client_id(params[:client_id])
end


def new
  @share = Share.new
end
 
def create
    @share = Share.new(params[:share])
    if @share.save
      redirect_to("/clients/#{@share.client_id}/requirements/incorps")
    else
      render :action => 'new'
    end
  end
  
  def show
    @share = Share.find(params[:id])
  end
  
 def edit
      @share = Share.find(params[:id])
 end
  
  def update
    @share = Share.find(params[:id])
    if @share.update_attributes(params[:share])
      redirect_to("/clients/#{@share.client_id}/requirements/incorps")
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @share = Share.find(params[:id])
    @share.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to shares_path
  end
end
