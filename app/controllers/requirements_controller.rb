class RequirementsController < BaseController
 def index
     redirect_to("/dashboard",:notice => 'You cannot access this page') unless Client.find(params[:client_id]).user_id == current_user.id
 end
end
