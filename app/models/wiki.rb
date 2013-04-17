class Wiki < ActiveRecord::Base

  versioned

  belongs_to :owner, :class_name => 'User', :foreign_key => 'owner_id'
  belongs_to :author, :class_name => 'User', :foreign_key => 'author_id'

  delegate :username, :to => :owner, :prefix => true, :allow_nil => true
  delegate :username, :to => :author, :prefix => true, :allow_nil => true

end
