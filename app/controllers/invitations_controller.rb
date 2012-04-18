class InvitationsController < ApplicationController

  def new
      @invitation = Invitation.new
  end

  def create
    @invitation = Invitation.new(params[:invitation])
    # @invitation.user = current_user
      if @invitation.save
           InvitationMailer.invitation(@invitation, new_user_url(:invitation_token=>@invitation.token)).deliver
           flash[:notice] = "Thank you, invitation sent to given email id."
           redirect_to root_path
      else
           redirect_to root_path
      end
   end
end
 

