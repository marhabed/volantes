class Address < ActiveRecord::Base
  attr_accessible :country, :number, :state, :street, :suburb, :town, :zip_code
end
