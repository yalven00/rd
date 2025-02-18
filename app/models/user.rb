require 'digest/md5'

class User < ApplicationRecord
attr_accessible :avatar_url, :bio, :email, :name, :password, :password_confirmation, :username
has_secure_password	

  has_many :ribbits


  before_validation :prep_email
  before_save :create_avatar_url

  private

  def prep_email 
    self.email = self.email.strip.downcase if self.email
  end


  def create_avatar_url
    self.avatar_url = "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(self.email)}?s=50"
  end

end

