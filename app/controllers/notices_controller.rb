class NoticesController < ApplicationController
  # GET /notices
  # GET /notices.xml
  def index
    @notices = Notice.find_all_by_client_id(params[:client_id])
     
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notices }
    end
  end

  # GET /notices/1
  # GET /notices/1.xml
  def show
    @notice = Notice.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @notice }
    end
  end

  # GET /notices/new
  # GET /notices/new.xml
  def new
    @notice = Notice.new
     1.times do
      notice_agenda = @notice.notice_agendas.build
    end
     1.times do
      notice_director = @notice.notice_directors.build
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @notice }
    end
  end

  # GET /notices/1/edit
  def edit
    @notice = Notice.find(params[:id])
  end

  # POST /notices
  # POST /notices.xml
  def create
    @notice = Notice.new(params[:notice])

 
      if @notice.save
       flash[:notice] = "Successfully created description."
       redirect_to("/clients/#{@notice.client_id}/minutes/notices")
      else
        render :action => 'new'
      end
 
  end

  # PUT /notices/1
  # PUT /notices/1.xml
  def update
    @notice = Notice.find(params[:id])

    respond_to do |format|
      if @notice.update_attributes(params[:notice])
        format.html { redirect_to("/clients/#{@notice.client_id}/minutes/notices", :notice => 'Notice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @notice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.xml
  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy

    respond_to do |format|
      format.html { redirect_to("/clients/#{@notice.client_id}/minutes/notices") }
      format.xml  { head :ok }
    end
  end
  
  def cba
       @bankdetail = Bankdetail.new
       @company_minute = CompanyMinute.new
       @company_director_designations = CompanyDirectorDesignation.find_all_by_client_id(params[:client_id])
       @company_director_designation = CompanyDirectorDesignation.new

  end


end
