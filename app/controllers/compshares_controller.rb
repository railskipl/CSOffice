class CompsharesController < ApplicationController
  
  def new
    @compshare = Compshare.new
  end
  def edit
    @compshare = Compshare.find(params[:id])
  end
  def update
    @compshare =Compshare.find(params[:id])
    respond_to do |format|
      if @compshare.update_attributes(params[:compshare])
        format.html { redirect_to("/clients/#{@compshare.client_id}/requirements/din_details") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @compshare.errors, :status => :unprocessable_entity }
      end
       end
  end
  def create
    @compshare = Compshare.new(params[:compshare])
   
      if @compshare.save
        redirect_to("/clients/#{@compshare.client_id}/requirements/din_details")
      else
        redirect_to "/clients/#{@compshare.client_id}/requirements/din_details"
      end
  end
end
