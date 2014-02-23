require 'exifr'

User.create(email: "abed@abed.com", user_name: "abed", password: "dreamatorium", password_confirmation: "dreamatorium")

Dir.foreach('public/images') do |photo|
	unless photo[-4..-1] != ".JPG" && photo[-4..-1] != ".jpg"
		Picture.create(latitude: EXIFR::JPEG.new("public/images/#{photo}").gps.latitude, longitude: EXIFR::JPEG.new("public/images/#{photo}").gps.longitude, altitude: EXIFR::JPEG.new("public/images/#{photo}").gps.altitude, user_id: 1)

	end
end