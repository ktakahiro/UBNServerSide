class Spot < ApplicationRecord
  has_many :spot_areas
  has_many :areas , through: :spot_areas

  has_many :spot_tags
  has_many :tags , through: :spot_tags

  validates :spot_name, presence: true
  validates :image_url, presence: true
  validates :longtitude, presence: true
  validates :latitude, presence: true
  validates :is_male, inclusion: { in: [true, false] }
  validates :is_female, inclusion: { in: [true, false] }
  validates :start_hour, presence: true
  validates :end_hour, presence: true

  def 
end
