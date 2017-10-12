class Area < ApplicationRecord
  has_many :spot_areas
  has_many :spots , through: :spot_areas

  validates :name, presence: true


  def self.getMainSpot(date, area, member, is_male, is_female)
    Area.all
    return
  end

  def self.getSubSpot(id)
    Area.all
    return
  end

end
