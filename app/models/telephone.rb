class Telephone < ActiveRecord::Base
  attr_accessible :address_id, :country_code, :description, :phone, :state_code

  belongs_to :address
end
