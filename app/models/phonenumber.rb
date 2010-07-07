class Phonenumber < ActiveRecord::Base
  belongs_to :owner, :foreign_key => :owner_id, :class_name => 'Person'
end
