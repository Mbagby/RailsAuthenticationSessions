class User < ActiveRecord::Base
	validates :username, presence: true, uniqueness: true
  	has_secure_password
  	validates_presence_of :password, :on => :create
end
