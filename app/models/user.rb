require 'file_size_validator' 

class User < ActiveRecord::Base
  authenticates_with_sorcery!
 
  validates :password,                presence: true, confirmation: true, length: { minimum: 3}, :if => :password
  validates :email,                   presence: true, uniqueness: true
  validates :password_confirmation,   presence: true, :if => :password
  validates :username,                presence: true

  has_many :projects 
  has_many :owners, :class_name => 'Project', :foreign_key => 'owner_id'


  has_many :authors, :class_name => "Wiki", :foreign_key => 'author_id' 
  has_many :owners, :class_name => 'Wiki', :foreign_key => 'owner_id'

  mount_uploader :avatar, AvatarUploader
  validates :avatar, 
    :file_size => { :maximum => 5.megabytes.to_i} 
  validates_integrity_of :avatar
  validates_processing_of :avatar    

end
