Dir.foreach('../public/images/') do |photo|
	photo.EXIFR::JPEG.exif
end