class MainTag < ApplicationRecord
  has_many :spot_tags, foreign_key: 'id'

  validates :name, presence: true
end
