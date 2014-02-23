Dir.entries('../public/images/').each do |photo|
	photo.EXIFR::JPEG.exif
end