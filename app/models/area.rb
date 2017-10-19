# area database
class Area < ApplicationRecord
  has_many :spot_areas, foreign_key: 'area_id'
  has_many :spots, through: :spot_areas

  validates :area_name, presence: true

end
