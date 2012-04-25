class CompsharesController < ApplicationController
  
  def new
    @compshare = Compshare.new
  end
  def edit
    @compshare = Compshare.find(params[:id])
  end
  def create
    @compshare = Compshare.new(params[:compshare])
      if @compshare.save
        redirect_to requirements_path
        flash[:notice] = "Thank you, the Company Shareholder was successfully created."
      else
        render action "new"
      end
  end
end
