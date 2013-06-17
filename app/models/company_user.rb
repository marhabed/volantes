class CompanyUser < ActiveRecord::Base
  attr_accessible :company_id, :user_id

  belongs_to :company, class_name: 'Company'
  belongs_to :user, class_name: 'User'
end
