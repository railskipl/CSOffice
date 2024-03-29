module SessionsHelper
  
  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    current_user = user
  end
  
  
   
  def current_user?(user)
     user == current_user     
  end

def current_user
  @current_user ||= user_from_remember_token
end

def signed_in?
  !current_user.nil?
end

def sign_out
  cookies.delete(:remember_token)
  self.current_user?nil
end
def concurrent_din
 (current_user.role? :csadmin) && Contact.find_by_user_id(current_user.id) != nil || 
 (current_user.role? :staff) && Contact.find_by_user_id(current_user.invitation.user_id) != nil
end
private

def user_from_remember_token
  User.authenticate_with_salt(*remember_token)
end

def remember_token
  cookies.signed[:remember_token] || [nil, nil]
end

def deny_access
redirect_to signin_path, :notice => "Please sign in to access this page."
end

end
