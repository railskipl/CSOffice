class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.xml
     
  def index
    @clients = Client.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clients }
    end
  end

  # GET /clients/1
  # GET /clients/1.xml
  def show
    @client = Client.find(params[:id])

    @first_letter = FirstLetter.new
   if (@client.user_id == current_user.id) || (Clientuser.find_by_client_id(@client.id).recipient == current_user.id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client }
    end
    else
       redirect_to("/dashboard",:notice => 'You cannot access this page')  
    end
  end

  # GET /clients/new
  # GET /clients/new.xml
  def new
    if current_user.role? :csadmin
    @client = Client.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client }
    end
  
  else
    redirect_to("/dashboard",:notice => 'You cannot access this page') 
  end
end
  # GET /clients/1/edit
  def edit
    @client = Client.find(params[:id])
      if @client.user_id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client }
    end
    else
  redirect_to("/dashboard",:notice => 'You cannot access this page')    end
  end

  # POST /clients
  # POST /clients.xml
  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => 'Client was successfully created.') }
        format.xml  { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.xml
  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to(@client, :notice => 'Client was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.xml
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to(clients_url) }
      format.xml  { head :ok }
    end
  end
   
end
