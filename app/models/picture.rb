class Picture < ActiveRecord::Base
<<<<<<< HEAD
  # Remember to create a migration!
=======
	belongs_to :user
	
  validates :longitude, presence: true
  validates :latitude, presence: true
>>>>>>> 01663a014f61f139e365c7aac12d47ff42f117d5
end
