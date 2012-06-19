class DinsController < BaseController
  # GET /dins
  # GET /dins.xml
  def index
    @dins = Din.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dins }
    end
  end

  # GET /dins/1
  # GET /dins/1.xml
  def show
    @din = Din.find(params[:id])
    if @din.user_id == current_user.id
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @din }
    end
    else
      redirect_to "/"
    end
  end

  # GET /dins/new
  # GET /dins/new.xml
  def new
    @din = Din.new
    @con = Contact.find_all_by_user_id(current_user.id)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @din }
    end
  end

  # GET /dins/1/edit
  def edit
    @din = Din.find(params[:id])
    @con = Contact.find_all_by_user_id(current_user.id)
     if @din.user_id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @din }
      end
      else
      redirect_to "/"
     end
  end

  # POST /dins
  # POST /dins.xml
  def create
    @din = Din.new(params[:din])

    respond_to do |format|
      if @din.save
        format.html { redirect_to(@din, :notice => 'Din was successfully created.') }
        format.xml  { render :xml => @din, :status => :created, :location => @din }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @din.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dins/1
  # PUT /dins/1.xml
  def update
    @din = Din.find(params[:id])

    respond_to do |format|
      if @din.update_attributes(params[:din])
        format.html { redirect_to(@din, :notice => 'Din was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @din.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dins/1
  # DELETE /dins/1.xml
  def destroy
    @din = Din.find(params[:id])
    @din.destroy

    respond_to do |format|
      format.html { redirect_to(dins_url) }
      format.xml  { head :ok }
    end
  end
end
