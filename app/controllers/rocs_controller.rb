class RocsController < ApplicationController
   
def index
  @rocs = Roc.find(:all)
end


def new
  @roc = Roc.new
end
 
def create
    @roc = Roc.new(params[:roc])
    if @roc.save
      flash[:notice] = "Successfully created product."
      redirect_to @roc
    else
      render :action => 'new'
    end
  end
  
  def show
    @roc = Roc.find(params[:id])
  end
  
 def edit
      @roc = Roc.find(params[:id])
 end
  
  def update
    @roc = Roc.find(params[:id])
    if @roc.update_attributes(params[:roc])
      flash[:notice] = "Successfully updated product."
      redirect_to @roc
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @roc = Roc.find(params[:id])
    @roc.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to rocs_path
  end
end
