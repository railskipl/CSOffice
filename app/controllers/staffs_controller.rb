class StaffsController < ApplicationController
  def index
    redirect_to("/dashboard",:notice => 'You cannot access this page') unless User.find(params[:id]).id == current_user.id

    # @user = User.find(params[:id])
    @users = User.all
    
  end
end
