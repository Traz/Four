class User < ActiveRecord::Base
  authenticates_with_sorcery!
 
  validates :password,                presence: true, confirmation: true, length: { minimum: 3}
  validates :email,                   presence: true, uniqueness: true
  validates :password_confirmation,   presence: true

end
