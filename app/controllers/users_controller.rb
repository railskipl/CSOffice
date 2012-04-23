class UsersController < ApplicationController

# before_filter :authenticate

 # before_filter :correct_user, :only => [:edit, :update]
  def show
    @user = User.find(params[:id])
    @users = User.all
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
      @title = "Edit user"
  end
  def update
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
        redirect_to(root_path) unless current_user=(@user)
    end
end

