# spot_tag database
class SpotTag < ApplicationRecord
  belongs_to :spot
  belongs_to :tag
  
end
