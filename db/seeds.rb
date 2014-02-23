require 'exifr'

Dir.foreach('public/images') do |photo|
	unless photo[-4..-1] != ".JPG" && photo[-4..-1] != ".jpg"
		image = Picture.new
		image.latitude = EXIFR::JPEG.new("public/images/#{photo}").gps.latitude
		image.longitude = EXIFR::JPEG.new("public/images/#{photo}").gps.longitude
		image.altitude = EXIFR::JPEG.new("public/images/#{photo}").gps.altitude
		image.save
	end
end