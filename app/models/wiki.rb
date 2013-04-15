class Wiki < ActiveRecord::Base
  belongs_to :owner
  belongs_to :author
end
