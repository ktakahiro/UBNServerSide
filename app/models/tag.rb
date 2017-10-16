# tag database
class Tag < ApplicationRecord
  has_many :spot_tag, foreign_key: 'tag_id'
  has_many :spot , through: :spot_tag

  validates :tag_name, presence: true

end
