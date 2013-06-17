class Address < ActiveRecord::Base
  attr_accessible :country, :number, :postal_code, :state, :street, :suburb, :town

  has_one :telephone
  belongs_to :branch
end
