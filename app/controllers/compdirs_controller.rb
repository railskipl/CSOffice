class CompdirsController < ApplicationController
  
  def new
    @compdir = Compdir.new
  end
  def edit
    @compdir = Compdir.find(params[:id])

    @contacts =  Compdir.find_all_by_client_id(params[:client_id]) 

    @comp_dir =  Compdir.find_by_id(params[:id]).din_id

    @comp_dir =  Compdir.find_by_id(params[:id]).din_id

  end
  def update
    @compdir = Compdir.find(params[:id])
    respond_to do |format|
      if @compdir.update_attributes(params[:compdir])
        format.html { redirect_to("/clients/#{@compdir.client_id}/requirements/din_details") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @compdir.errors, :status => :unprocessable_entity }
      end
    end
  end
  def create
    @compdir = Compdir.new(params[:compdir])
    
      if @compdir.save
        redirect_to("/clients/#{@compdir.client_id}/requirements/din_details")
        flash[:notice] = "Thank you, the Company Director was successfully created."
      else
        redirect_to "/clients/#{@compdir.client_id}/requirements/din_details"
      end
  end
end
