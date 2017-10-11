class CreateSpotAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :spot_areas do |t|
      
      t.integer :spot_id
      t.integer :area_id

      t.timestamps
    end
  end
end
