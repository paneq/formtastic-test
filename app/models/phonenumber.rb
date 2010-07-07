class Phonenumber < ActiveRecord::Base
  belongs_to :phone_type, :foreign_key => :phone_kind_id, :class_name => 'PhoneType'
end
