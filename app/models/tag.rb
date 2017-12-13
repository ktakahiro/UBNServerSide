# tag database
class Tag < ApplicationRecord
  has_many :spot_tags, foreign_key: 'tag_id'
  has_many :spots, through: :spot_tag

  validates :tag_name, presence: true

end
