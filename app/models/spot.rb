class Spot < ApplicationRecord
  has_many :spot_areas, foreign_key: 'spot_id'
  has_many :areas , through: :spot_areas

  has_many :spot_tags, foreign_key: 'spot_id'
  has_many :tags , through: :spot_tags

  validates :spot_name, presence: true
  validates :image_url, presence: true
  validates :longtitude, presence: true
  validates :latitude, presence: true
  validates :is_male, inclusion: { in: [true, false] }
  validates :is_female, inclusion: { in: [true, false] }
  validates :start_hour, presence: true
  validates :end_hour, presence: true

  def self.getMainSpot(date, area, member, is_male, is_female)
    main_spots = Spot.where(["is_male=? and is_female=? and max_people.gteq ? and min_people.lteq ?",is_male,is_female,member,member])
    main_spots = main_spots.joins(:spot_areas).joins(:areas).where("name" => area)
    return main_spots
  end

  def self.getSubSpot(id)
    main_spot = Spot.joins(:spot_areas).joins(:areas).find(id)
    Spot.joins(:spot_areas).joins(:areas).where("area_name" => main_spot.area_name).each do |spot|
      if distance(spot.latitude,spot.longtitude,main_spot.latitude,main_spot.longtitude) < 1 then

      end
    end
    return sub_spots
  end


  #緯度経度から距離を求める
  def distance(lat1, lng1, lat2, lng2)
    # ラジアン単位に変換
    x1 = lat1.to_f * Math::PI / 180
    y1 = lng1.to_f * Math::PI / 180
    x2 = lat2.to_f * Math::PI / 180
    y2 = lng2.to_f * Math::PI / 180

    # 地球の半径 (km)
    radius = 6378.137

    # 差の絶対値
    diff_y = (y1 - y2).abs

    calc1 = Math.cos(x2) * Math.sin(diff_y)
    calc2 = Math.cos(x1) * Math.sin(x2) - Math.sin(x1) * Math.cos(x2) * Math.cos(diff_y)

    # 分子
    numerator = Math.sqrt(calc1 ** 2 + calc2 ** 2)

    # 分母
    denominator = Math.sin(x1) * Math.sin(x2) + Math.cos(x1) * Math.cos(x2) * Math.cos(diff_y)

    # 弧度
    degree = Math.atan2(numerator, denominator)

    # 大円距離 (km)
    degree * radius
  end
end
