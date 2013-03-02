class User < ActiveRecord::Base
  attr_accessible :admin, :email, :name, :password, :password_confirmation

has_secure_password

has_many :items

validates_presence_of :email, :name, :password, :password_confirmation

validates_uniqueness_of :email

end
