require 'acts-as-taggable-on'
class Flyer < ActiveRecord::Base
  attr_accessible :active, :branch_id, :file_url, :name, :flyer_image

  has_many :branch_flyers
  has_many :flyer_users
  has_many :branches, through: :branch_flyers
  has_many :users, through: :flyer_users

  acts_as_taggable
  acts_as_taggable_on :feature
  
   has_attached_file :flyer_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
