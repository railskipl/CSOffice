require 'digest'
class User < ActiveRecord::Base
  attr_accessor :password
  
  validates_presence_of :invitation_id, :message => 'is required'
  
  validates_uniqueness_of :invitation_id
  
  has_many :sent_invitations, :class_name => 'Invitation', :foreign_key => 'user_id'
  
  belongs_to :invitation 
  
  has_and_belongs_to_many :roles
  
  attr_accessible :login, :email, :name, :password, :password_confirmation, :invitation_token, :role_ids, :user_id,:client_ids
  
  has_many :clients, :dependent => :destroy

  attr_accessible :client_ids,:user_ids,:client_id,:user_id
  has_many :dins
  #remember me functionality.
  before_create { genrate_tokn(:password_reset_token) }

  #method for invitation token.
  def invitation_token
     invitation.token if invitation
  end

  def invitation_token=(token)
     self.invitation = Invitation.find_by_token(token)
  end
  
  # method for remember me.
  def genrate_tokn(password_reset_token)
    self.password_reset_token = (Digest::MD5.hexdigest "#{ActiveSupport::SecureRandom.hex(10)}-#{DateTime.now.to_s}")
  end
  
  #method for reseting password.
  def send_password_reset
      self.password_reset_sent_at = Time.now
      update_attribute(:password_reset_token, genrate_tokn(:password_reset_token) )
      UserMailer.password_reset(self).deliver
  end


  
  validates :name, :length => { :maximum => 50 }
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, :presence => true,
                    :format => { :with => email_regex},
                    :uniqueness => { :case_sensitive => false }

  validates :password, :presence => true, :confirmation => true,
                       :length => { :within => 6..40 }              
  
  before_save :encrypt_password
  

  def has_password?(submitted_password)
      encrypted_password == encrypt(submitted_password)
  end

 # This method is used for cancan gem. It will check the user role at the time of user authentication.  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s)
  end
  class << self
        def authenticate(email, submitted_password)
            user = find_by_email(email)
            (user && user.has_password?(submitted_password)) ? user :nil
        end
        def authenticate_with_salt(id,cookie_salt)
            user = find_by_id(id)
            (user && user.salt == cookie_salt) ? user :nil
        end 
   end
private
   def encrypt_password
       self.salt = make_salt if new_record?
       self.encrypted_password = encrypt(password)
   end
   def encrypt(string)
       secure_hash("#{salt}--#{string}")
   end
   def make_salt
       secure_hash("#{Time.now.utc}--#{password}")
   end
   def secure_hash(string)
       Digest::SHA2.hexdigest(string)
   end
end
