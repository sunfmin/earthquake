class CreateEarthquakes < ActiveRecord::Migration
  def change
    create_table :earthquakes do |t|
      t.string :src
      t.integer :eqid
      t.string :version
      t.datetime :happend_at
      t.float :lat
      t.float :lon
      t.float :mag
      t.float :depth
      t.integer :nst
      t.string :region

      t.timestamps
    end
  end
end
