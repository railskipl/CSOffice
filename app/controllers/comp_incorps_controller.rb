class CompIncorpsController < ApplicationController
  def index
          redirect_to("/dashboard",:notice => 'You cannot access this page') unless Client.find(params[:client_id]).user_id == current_user.id || Clientuser.find_by_client_id(params[:client_id]).recipient == current_user.id

     @incorporated_company_names = IncorporatedCompanyName.find_by_client_id(params[:client_id])
     @incorporated_company_name = IncorporatedCompanyName.new
       


    def show
     @incorporated_company_name = IncorporatedCompanyName.find_by_client_id(params[:client_id])
end
  end
  
end
