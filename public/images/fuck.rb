require 'exifr'

a = EXIFR::JPEG.new('photo.JPG')
b = EXIFR::JPEG.new('photo1fucker.JPG')
c = EXIFR::JPEG.new('photo2fucker.JPG')

p a.gps
# p a.gps.latitude.class	
p b.gps
p c.gps
