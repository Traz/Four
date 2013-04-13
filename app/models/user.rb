class User < ActiveRecord::Base
  authenticates_with_sorcery!
 
  validates :password,                presence: true, confirmation: true, length: { minimum: 3}, :if => :password
  validates :email,                   presence: true, uniqueness: true
  validates :password_confirmation,   presence: true, :if => :password
  validates :username,                presence: true

end
