class CreateSpotTags < ActiveRecord::Migration[5.1]
  def change
    create_table :spot_tags do |t|

      t.belongs_to :spot, index: true
      t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
