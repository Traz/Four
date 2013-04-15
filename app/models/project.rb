class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :owner, :class_name => 'User', :foreign_key => 'owner_id'

  delegate :username, :to => :owner, :prefix => true, :allow_nil => true
  delegate :username, :to => :user, :prefix => "author", :allow_nil => true

end
