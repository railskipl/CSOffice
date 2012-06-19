class MoaObjectsController < ApplicationController
  def index
  @moa_objects = MoaObject.find_all_by_user_id(current_user.id)
end


def new
  @moa_object = MoaObject.new
end
 
def create
    @moa_object = MoaObject.new(params[:moa_object])
    if @moa_object.save
      flash[:notice] = "Successfully created product."
      redirect_to @moa_object
    else
      render :action => 'new'
    end
  end
  
  def show
    @moa_object = MoaObject.find(params[:id])
    if @moa_object.user_id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moa_object }
    end
    else
      redirect_to "/"
    end
  end
  
 def edit
      @moa_object = MoaObject.find(params[:id])
        if @moa_object.user_id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @moa_object }
    end
    else
      redirect_to "/"
    end
 end
  
  def update
    @moa_object = MoaObject.find(params[:id])
    if @moa_object.update_attributes(params[:moa_object])
      flash[:notice] = "Successfully updated product."
      redirect_to @moa_object
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @moa_object = MoaObject.find(params[:id])
    @moa_object.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to moa_objects_path
  end
  
  
  
end
