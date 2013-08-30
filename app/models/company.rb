class Company < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :company_users
  has_many :users, through: :company_users, source: :user
  has_many :branches
  
  belongs_to :user
end
