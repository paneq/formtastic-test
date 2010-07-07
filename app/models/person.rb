class Person < ActiveRecord::Base
  set_primary_key :uuid
  validates :name, :presence => true
end
