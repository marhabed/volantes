class Branch < ActiveRecord::Base
  attr_accessible  :company_id, :latitude, :longitude

  validates :company_id, presence: true

  belongs_to :company

  has_one :address

  has_many :branch_flyers
  has_many :flyers, through: :branch_flyers
end
