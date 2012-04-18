class StaffsController < ApplicationController
  def index
    # @user = User.find(params[:id])
    @users = User.all
  end
end
