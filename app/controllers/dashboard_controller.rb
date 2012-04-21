class DashboardController < BaseController
  def index
    if current_user.role? :csadmin
    @clients = Client.find_all_by_user_id(current_user.id)
    else
    @clients = Client.find_all_by_user_id(current_user.invitation.user_id)
    end
  end
end
