class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :username

  has_many :company_users
  has_many :flyer_users
  has_many :companies, through: :company_users
  has_many :flyers, through: :flyer_users
end
