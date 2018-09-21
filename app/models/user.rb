# require 'bcrypt' #https://github.com/codahale/bcrypt-ruby
class User < ApplicationRecord
  #https://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password
  #similar to bcrypts methods without actually writing them out
  has_secure_password

  has_many :sugars
  has_many :carbs
  has_many :ellipticals
  has_many :weights
  has_many :lifts
  has_many :waist_sizes

  #Validations:
  validates_presence_of :firstname, :lastname, :username, :password_digest
end
