class CreateSpotTags < ActiveRecord::Migration[5.1]
  def change
    create_table :spot_tags do |t|
      
      t.integer :spot_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
