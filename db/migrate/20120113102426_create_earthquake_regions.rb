class CreateEarthquakeRegions < ActiveRecord::Migration
  def change
    create_table :earthquake_regions do |t|
      t.integer :earthquake_id
      t.integer :region_id

      t.timestamps
    end
  end
end
