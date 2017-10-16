# spot_area database
class SpotArea < ApplicationRecord
  belongs_to :spot
  belongs_to :area
end
