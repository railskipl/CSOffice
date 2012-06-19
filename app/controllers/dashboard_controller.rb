class DashboardController < BaseController
  def index
        @staff=Clientuser.find_all_by_recipient(current_user.id)
        @user = User.find_by_id(params[:id])
     @incorporated_company_name = IncorporatedCompanyName.find(:all)
    if current_user.role? :csadmin
    @clients = Client.find_all_by_user_id(current_user.id)
    else
    @clients = Client.find_all_by_user_id(current_user.invitation.user_id)
    end
  end
end
