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

  def self.get_main_spot(_date, area, member)
    main_spots = Spot.joins(:areas).where('max_people > ? and min_people < ? and area_name = ?', member, member, area)
                     .select('spots.*,areas.area_name')
    main_spots = main_spots.joins(:tags).select('spots.*,tags.tag_name')
    main_spots
  end

  # @param [Object] id
  # @return [Object] sub_spots
  def self.get_sub_spot(id)
    main_spot = Spot.joins(:areas).select('spots.*,areas.area_name').find(id)
    temp_spots = Spot.joins(:areas)
                     .where('area_name = ? and id <> ?', main_spot.area_name,main_spot.id).select('spots.*,areas.area_name')
    temp_spots = temp_spots.joins(:tags).select('spots.*,tags.tag_name')
    sub_spots = []
    temp_spots.each do |spot|
      if distance(spot.latitude, spot.longitude, main_spot.latitude, main_spot.longitude) < 1.0
        sub_spots.push(spot)
      end
    end
    sub_spots
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
end
