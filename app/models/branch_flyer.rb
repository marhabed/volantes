class BranchFlyer < ActiveRecord::Base
  attr_accessible :branch_id, :flyer_id

  belongs_to :flyer
  belongs_to :branch
end
