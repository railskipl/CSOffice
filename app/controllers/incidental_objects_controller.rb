class IncidentalObjectsController < ApplicationController
  def index
  @incidental_objects = IncidentalObject.find_all_by_user_id(current_user.id)
end


def new
  @incidental_object = IncidentalObject.new
end
 
def create
    @incidental_object = IncidentalObject.new(params[:incidental_object])
    if @incidental_object.save
      flash[:notice] = "Successfully created product."
      redirect_to @incidental_object
    else
      render :action => 'new'
    end
  end
  
  def show
    @incidental_object = IncidentalObject.find(params[:id])
     if @incidental_object.user_id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @incidental_object }
    end
    else
      redirect_to "/"
    end
  end
  
 def edit
      @incidental_object = IncidentalObject.find(params[:id])
        if @incidental_object.user_id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @incidental_object }
    end
    else
      redirect_to "/"
    end
 end
  
  def update
    @incidental_object = IncidentalObject.find(params[:id])
    if @incidental_object.update_attributes(params[:incidental_object])
      flash[:notice] = "Successfully updated product."
      redirect_to @incidental_object
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @incidental_object = IncidentalObject.find(params[:id])
    @incidental_object.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to incidental_objects_path
  end
  
  
end
