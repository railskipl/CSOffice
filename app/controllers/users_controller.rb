class UsersController < ApplicationController
<<<<<<< HEAD

# before_filter :authenticate

 # before_filter :correct_user, :only => [:edit, :update]
=======
    before_filter  :authenticate ,:only => [:edit,:update]
    before_filter :correct_user,:only => [:edit,:update,:destroy]
>>>>>>> aditya
  def show
    @user = User.find(params[:id])
    # if @user.id == current_user.id
    # respond_to do |format|
      # format.html # show.html.erb
      # format.xml  { render :xml => @user }
    # end
    # else
      # redirect_to "/"
    # end
  
    @users = User.all
    @up_client= Client.find_all_by_user_id(current_user.id)
    
    if request.post?
      redirect_to("/")
    end
    
  end
  
  def add_clients
    @user = User.find(params[:id])
    @users = User.all
    @up_client= Client.find_all_by_user_id(current_user.id)

    
    
    
    if request.post?
      
      @client_user = Clientuser.find_all_by_recipient(params[:id])
      
      @client_user.each do |c|
        
          Clientuser.delete(c.id)
          
      end
        
      
      recipients_array = params[:user][:client_ids].collect{ |s| }
        s=0
        recipients_array.each do |r|
          client = Clientuser.create(:client_id => params[:user][:client_ids][s], :recipient => params[:id])
          s=s+1
        end
      
    end
    
  end
  
  def new
    @user = User.new(:invitation_token => params[:invitation_token])
    @user.email = @user.invitation.email if @user.invitation
    @title="Sign up"
  end

  def create
   @user = User.new(params[:user])
    if @user.save
    flash[:notice] = "Thank you for registering. Please login."
    redirect_to root_path
    else
    @title = "Sign up"
    render 'new'
    end
  end
  def edit
      @user = User.find(params[:id])
       if@user.id == current_user.id
       respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
    else
      redirect_to "/"
    end
      @title = "Edit user"
      
  end
  def update
    
    
    puts "********************************"
    puts params[:user]
    puts "********************************"
      @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
         flash[:success] = "Profile updated."
         redirect_to @user
      else
         @title = "Edit user"
         render 'edit'
      end
  end
  def destroy
      @user = User.find(params[:id])
      @user.destroy
      respond_to do |format|
          format.html { redirect_to users_url }
          format.json { head :ok }
  end
  
  end

  private
    def authenticate
        deny_access unless signed_in?
    end
    
     def correct_user
         @user = User.find(params[:id])
        redirect_to("/dashboard",:notice => 'You cannot access this page') unless current_user?(@user)
    end
    
end

