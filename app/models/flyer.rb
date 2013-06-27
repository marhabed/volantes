require 'acts-as-taggable-on'
class Flyer < ActiveRecord::Base
  attr_accessible :active, :branch_id, :file_url, :name

  has_many :branch_flyers
  has_many :flyer_users
  has_many :branches, through: :branch_flyers
  has_many :users, through: :flyer_users

  acts_as_taggable
  acts_as_taggable_on :feature
end
