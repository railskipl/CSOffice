class Invitation < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :email
  validate :recipient_cant_be_registered
  
  before_create :generate_token
  
  
  private

   def recipient_cant_be_registered
       errors.add :recipient_email, 'is already registered' if User.find_by_email(email)
   end

  def generate_token
     self.token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end

  

end
