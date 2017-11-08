class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :spot_name
      t.string :image_url
      t.string :hp_url
      t.decimal :longitude, :precision => 9, :scale => 6
      t.decimal :latitude, :precision => 9, :scale => 6
      t.text :detail
      t.integer :min_people
      t.integer :max_people
      t.boolean :is_female
      t.boolean :is_male
      t.time :start_hour
      t.time :end_hour
      t.timestamps
    end
  end
end
