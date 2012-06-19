class StatesController < ApplicationController
  
def index
  @states = State.find(:all)
end


def new
  @state = State.new
end
 
def create
    @state = State.new(params[:state])
    if @state.save
      flash[:notice] = "Successfully created product."
      redirect_to @state
    else
      render :action => 'new'
    end
  end
  
  def show
    @state = State.find(params[:id])
  end
  
 def edit
      @state = State.find(params[:id])
 end
  
  def update
    @state = State.find(params[:id])
    if @state.update_attributes(params[:state])
      flash[:notice] = "Successfully updated product."
      redirect_to @state
    else
      render :action => 'edit'
    end
  end  
    def destroy
    @state = State.find(params[:id])
    @state.destroy
    flash[:notice] = "Successfully destroyed product."
    redirect_to states_path
  end
  
end