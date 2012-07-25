class BankdetailsController < ApplicationController
  # GET /bankdetails
  # GET /bankdetails.xml
  def index
    @bankdetails = Bankdetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bankdetails }
    end
  end

  # GET /bankdetails/1
  # GET /bankdetails/1.xml
  def show
    @bankdetail = Bankdetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bankdetail }
    end
  end

  # GET /bankdetails/new
  # GET /bankdetails/new.xml
  def new
    @bankdetail = Bankdetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bankdetail }
    end
  end

  # GET /bankdetails/1/edit
  def edit
    @bankdetail = Bankdetail.find(params[:id])
  end

  # POST /bankdetails
  # POST /bankdetails.xml
  def create
    @bankdetail = Bankdetail.new(params[:bankdetail])
      if @bankdetail.save
        redirect_to("/clients/#{@bankdetail.client_id}/minutes/notices/#{@bankdetail.notice_id}/agenda/#{@bankdetail.agenda_id}/",:notice => 'Company minute was successfully created and now select resoution matter')
      else
        redirect_to("/clients/#{@bankdetail.client_id}/minutes/notices/#{@bankdetail.notice_id}/agenda/#{@bankdetail.agenda_id}/",:notice => 'Company minute already created')
      end
    
  end

  # PUT /bankdetails/1
  # PUT /bankdetails/1.xml
  def update
    @bankdetail = Bankdetail.find(params[:id])

      if @bankdetail.update_attributes(params[:bankdetail])
              redirect_to("/clients/#{@bankdetail.client_id}/minutes/notices/#{@bankdetail.notice_id}/agenda/#{@bankdetail.agenda_id}/bankdetails")

      else
        render :action => 'edit'
       
    end
  end

  # DELETE /bankdetails/1
  # DELETE /bankdetails/1.xml
  def destroy
    @bankdetail = Bankdetail.find(params[:id])
    @bankdetail.destroy
     redirect_to("/clients/#{@bankdetail.client_id}/minutes/notices/#{@bankdetail.notice_id}/agenda/#{@bankdetail.agenda_id}/bankdetails")

    end
end
