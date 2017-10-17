class CreateSpotAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :spot_areas do |t|

      t.belongs_to :spot, index: true
      t.belongs_to :area, index: true

      t.timestamps
    end
  end
ends
