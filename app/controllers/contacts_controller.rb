class ContactsController < BaseController
  # GET /contacts
  # GET /contacts.xml
 before_filter :csauth , :only => [:new,:edit]
  def index
    if current_user.role? :csadmin
    @contacts = Contact.find_all_by_user_id(current_user.id).paginate(:page => params[:page], :per_page => 10) 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contacts }
    end
    else
       @contacts = Contact.find_all_by_user_id(current_user.invitation.user_id).paginate(:page => params[:page], :per_page => 2)
  end
end
  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @contact = Contact.find(params[:id])
     if @contact.user_id == current_user.id || current_user.invitation.user_id
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
    end
    else
      redirect_to "/dashboard"
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
       @contact = Contact.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contact }
    end
  end
 
  # GET /contacts/1/edit
  def edit
    @contact = Contact.find(params[:id])
      if @contact.user_id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
    end
    else
      redirect_to "/dashboard"
    end
         
  end

  # POST /contacts
  # POST /contacts.xml
  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        format.html { redirect_to(@contact, :notice => 'Contact was successfully created.') }
        format.xml  { render :xml => @contact, :status => :created, :location => @contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.xml
  def update
    @contact = Contact.find(params[:id])

    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        format.html { redirect_to(@contact, :notice => 'Contact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.xml
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_url) }
      format.xml  { head :ok }
    end
  end

private

  def csauth
    #this method is to restrict staff from accessing contacts
    unless current_user.role? :csadmin
      redirect_to("/dashboard",:notice => 'You cannot access this page')
    end
  end
     

end
