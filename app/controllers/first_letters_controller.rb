class FirstLettersController < ApplicationController
  # GET /first_letters
  # GET /first_letters.xml
  def index
    @first_letters = FirstLetter.find_all_by_client_id(params[:client_id])

    @clients = Client.find_all_by_id(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @first_letters }
    end
  end

  # GET /first_letters/1
  # GET /first_letters/1.xml
  def show
    @first_letter = FirstLetter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @first_letter }
    end
  end

  # GET /first_letters/new
  # GET /first_letters/new.xml
  def new
    @first_letter = FirstLetter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @first_letter }
    end
  end

  # GET /first_letters/1/edit
  def edit
    @first_letter = FirstLetter.find(params[:id])
  end

  # POST /first_letters
  # POST /first_letters.xml
  def create
    @first_letter = FirstLetter.new(params[:first_letter])
  if @first_letter.save
   flash[:notice] = "Successfully created description."
       redirect_to("/clients/#{@first_letter.client_id}/first_letters")
    else
      flash[:notice] = "Already been created"
    redirect_to("/clients/#{@first_letter.client_id}/first_letters")
    end
  end
  

  # PUT /first_letters/1
  # PUT /first_letters/1.xml
  def update
    @first_letter = FirstLetter.find(params[:id])

    respond_to do |format|
      if @first_letter.update_attributes(params[:first_letter])
        format.html { redirect_to("/clients/#{@first_letter.client_id}/first_letters", :notice => 'First letter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @first_letter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /first_letters/1
  # DELETE /first_letters/1.xml
  def destroy
    @first_letter = FirstLetter.find(params[:id])
    @first_letter.destroy

    respond_to do |format|
      format.html { redirect_to("/clients/#{@first_letter.client_id}/first_letters") }
      format.xml  { head :ok }
    end
  end
  def fl
    
  end
end
