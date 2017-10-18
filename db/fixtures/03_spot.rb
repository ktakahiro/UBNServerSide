Spot.create do |s|
  s.id = 1
  s.spot_name = '歌広場渋谷店'
  s.image_url = 'www.example1.com'
  s.longitude = '100.010'
  s.latitude = '150.020'
  s.detail = 'カラオケです'
  s.min_people = '3'
  s.max_people = '5'
  s.is_female = true
  s.is_male = true
  s.start_hour = Time.local(2017, 5, 1, 9, 30)
  s.end_hour = Time.local(2017, 5, 1, 18, 30)
end

Spot.create do |s|
  s.id = 2
  s.spot_name = 'スターバックス渋谷店'
  s.image_url = 'www.example2.com'
  s.longitude = '100.010'
  s.latitude = '150.020'
  s.detail = 'カフェです'
  s.min_people = '5'
  s.max_people = '7'
  s.is_female = true
  s.is_male = true
  s.start_hour = Time.local(2017, 5, 1, 9, 30)
  s.end_hour = Time.local(2017, 5, 1, 18, 30)
end

Spot.create do |s|
  s.id = 3
  s.spot_name = '歌広場池袋店'
  s.image_url = 'www.example3.com'
  s.longitude = '100.010'
  s.latitude = '150.020'
  s.detail = 'カラオケです'
  s.min_people = '6'
  s.max_people = '10'
  s.is_female = true
  s.is_male = true
  s.start_hour = Time.local(2017, 5, 1, 9, 30)
  s.end_hour = Time.local(2017, 5, 1, 18, 30)
end

Spot.create do |s|
  s.id = 4
  s.spot_name = 'スターバックス池袋店'
  s.image_url = 'www.example4.com'
  s.longitude = '100.010'
  s.latitude = '150.020'
  s.detail = 'カフェです'
  s.min_people = '6'
  s.max_people = '10'
  s.is_female = true
  s.is_male = true
  s.start_hour = Time.local(2017, 5, 1, 9, 30)
  s.end_hour = Time.local(2017, 5, 1, 18, 30)
end
