class CompanyMinutesController < ApplicationController
  # GET /company_minutes
  # GET /company_minutes.xml
  def index
    @company_minutes = CompanyMinute.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @company_minutes }
    end
  end

  # GET /company_minutes/1
  # GET /company_minutes/1.xml
  def show
    @company_minute = CompanyMinute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @company_minute }
    end
  end

  # GET /company_minutes/new
  # GET /company_minutes/new.xml
  def new
    @company_minute = CompanyMinute.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @company_minute }
    end
  end

  # GET /company_minutes/1/edit
  def edit
    @company_minute = CompanyMinute.find(params[:id])
  end

  # POST /company_minutes
  # POST /company_minutes.xml
  def create
    @company_minute = CompanyMinute.new(params[:company_minute])
      if @company_minute.save
        redirect_to("/clients/#{@company_minute.client_id}/minutes/notices/#{@company_minute.notice_id}/agenda/#{@company_minute.agenda_id}/company_minutes")
      else
        redirect_to("/clients/#{@company_minute.client_id}/minutes/notices/#{@company_minute.notice_id}/agenda/#{@company_minute.agenda_id}/company_minutes",:notice => 'Resolution matter already created')
      end
    
  end

  # PUT /company_minutes/1
  # PUT /company_minutes/1.xml
  def update
    @company_minute = CompanyMinute.find(params[:id])

    if @company_minute.update_attributes(params[:company_minute])
        redirect_to("/clients/#{@company_minute.client_id}/minutes/notices/#{@company_minute.notice_id}/agenda/#{@company_minute.agenda_id}/",:notice => 'Company minute was successfully created and now select resoution matter')
      else
         render :action => 'edit'
      end
  end

  # DELETE /company_minutes/1
  # DELETE /company_minutes/1.xml
  def destroy
    @company_minute = CompanyMinute.find(params[:id])
    @company_minute.destroy
     redirect_to("/clients/#{@company_minute.client_id}/minutes/notices/#{@company_minute.notice_id}/agenda/#{@company_minute.agenda_id}/company_minutes")

  end
end
