require 'acts-as-taggable-on'
class Flyer < ActiveRecord::Base
  attr_accessible :active, :branch_id, :file_url, :name,  :image, :branch_flyers_attributes

  has_many :branch_flyers
  has_many :flyer_users
  has_many :branches, through: :branch_flyers
  has_many :users, through: :flyer_users
  
  accepts_nested_attributes_for :branch_flyers

  acts_as_taggable
  acts_as_taggable_on :feature
  
  mount_uploader :image, ImageUploader
end
