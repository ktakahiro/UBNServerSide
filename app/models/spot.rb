# spot database
class Spot < ApplicationRecord
  has_many :spot_areas, foreign_key: 'spot_id'
  has_many :areas, through: :spot_areas

  has_many :spot_tags, foreign_key: 'spot_id'
  has_many :tags, through: :spot_tags

  validates :spot_name, presence: true
  validates :image_url, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :detail, presence: true
  validates :is_male, inclusion: { in: [true, false] }
  validates :is_female, inclusion: { in: [true, false] }
  validates :start_hour, presence: true
  validates :end_hour, presence: true

  def self.and_like(column_name, keyword_text)
    keywords = keyword_text.split(/[[:space:]]+/).reject(&:empty?)
    return nil if keywords.empty?
    like_texts = ["#{column_name} like ?"] * keywords.size
    and_like_text = like_texts.join(" AND ")
    [and_like_text].concat(keywords.map{|keyword| "%#{keyword}%"})
  end

  def self.get_main_spot(_date, area, member, mainTags, query)
    main_spots = Spot.joins(:areas)
    if area != nil and area != "" and area != "-1"
      main_spots = main_spots.where('area_id = ?', area)
    end
    if member != nil and member != "" and member != "-1"
      main_spots = main_spots.where('max_people >= ? and min_people <= ?', member, member)
    end
    if mainTags != nil and mainTags != ""
      main_spots = main_spots.where('main_tag_id in (?)', mainTags)
    end
    if query != nil and query != ""
      main_spots = main_spots.where(self.and_like('spot_name', query)).or(main_spots.where((self.and_like('detail', query))))
    end

    main_spots.uniq
  end

  # @param [Object] id
  # @return [Object] sub_spots
  def self.get_sub_spot(id)
    main_spot = Spot.joins(:areas).select('spots.*,areas.area_name').find(id)
    # Rails.logger.debug "the main spot id is #{main_spot.id}"
    temp_spots = Spot.joins(:areas)
                     .where('area_name = ? and spots.id != ?', main_spot.area_name, main_spot.id)
    sub_spots = []
    temp_spots.each do |spot|
      if distance(spot.latitude, spot.longitude, main_spot.latitude, main_spot.longitude) < 1000
        sub_spots.push(spot)
      end
    end
    sub_spots
  end

  def self.get_tag(id)
    tag = Spot.joins(:tags).where('spots.id = ?', id).select('tags.*')
  end

  # get distance from two points
  # @param [Float] lat1
  # @param [Float] lng1
  # @param [Float] lat2
  # @param [Float] lng2
  # @return [Float] distance
  def self.distance(lat1, lng1, lat2, lng2)
    # convert to radian
    x1 = lat1.to_f * Math::PI / 180
    y1 = lng1.to_f * Math::PI / 180
    x2 = lat2.to_f * Math::PI / 180
    y2 = lng2.to_f * Math::PI / 180

    # radius of earth (km)
    radius = 6378.137

    # absolute value
    diff_y = (y1 - y2).abs

    calc1 = Math.cos(x2) * Math.sin(diff_y)
    calc2 = Math.cos(x1) * Math.sin(x2) - Math.sin(x1) * Math.cos(x2) * Math.cos(diff_y)

    # numerator
    numerator = Math.sqrt(calc1**2 + calc2**2)

    # denominator
    denominator = Math.sin(x1) * Math.sin(x2) + Math.cos(x1) * Math.cos(x2) * Math.cos(diff_y)

    # radian
    degree = Math.atan2(numerator, denominator)

    # distance (km)
    degree * radius
  end


  def self.spot_distance(spot1, spot2)
    # convert to radian
    lat1 = spot1.latitude
    lng1 = spot1.longitude
    lat2 = spot2.latitude
    lng2 = spot2.longitude

    x1 = lat1.to_f * Math::PI / 180
    y1 = lng1.to_f * Math::PI / 180
    x2 = lat2.to_f * Math::PI / 180
    y2 = lng2.to_f * Math::PI / 180

    # radius of earth (km)
    radius = 6378.137

    # absolute value
    diff_y = (y1 - y2).abs

    calc1 = Math.cos(x2) * Math.sin(diff_y)
    calc2 = Math.cos(x1) * Math.sin(x2) - Math.sin(x1) * Math.cos(x2) * Math.cos(diff_y)

    # numerator
    numerator = Math.sqrt(calc1**2 + calc2**2)

    # denominator
    denominator = Math.sin(x1) * Math.sin(x2) + Math.cos(x1) * Math.cos(x2) * Math.cos(diff_y)

    # radian
    degree = Math.atan2(numerator, denominator)

    # distance (m)
    degree * radius * 1000
  end
end
