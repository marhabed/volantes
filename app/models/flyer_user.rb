class FlyerUser < ActiveRecord::Base
  attr_accessible :flyer_id, :user_id

  belongs_to :flyer
  belongs_to :user
end
