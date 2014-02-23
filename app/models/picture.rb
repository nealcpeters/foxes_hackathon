class Picture < ActiveRecord::Base
	belongs_to :user
	
  validates :longitude, presence: true
  validates :latitude, presence: true
end
