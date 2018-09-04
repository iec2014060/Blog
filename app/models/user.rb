class User < ActiveRecord::Base
  attr_accessible :email, :password, :userid,:password_confirmation
  #has_secure_password
end
