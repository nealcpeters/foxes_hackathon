require 'bcrypt'

class User < ActiveRecord::Base
	has_many :pictures
  has_secure_password 
  validates :user_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  # Remember to create a migration!
end
