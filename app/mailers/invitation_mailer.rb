class InvitationMailer < ActionMailer::Base
  default :from => "mayukhandare@gmail.com"
  
  def invitation(invitation, signup_path)
      @invitation = invitation
      @signup_path = signup_path
      mail(:to => invitation.email, :subject => "Invitation To Join Our CS App!")
      invitation.update_attribute(:sent_at, Time.now)
  end
end
