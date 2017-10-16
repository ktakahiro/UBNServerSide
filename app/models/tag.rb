class Tag < ApplicationRecord
  has_many :spot_tags, foreign_key: 'tag_id'
  has_many :spots , through: :spot_tags

  validates :name, presence: true

end
