class EarthquakeRegion < ActiveRecord::Base
  belongs_to :earthquake
  belongs_to :region
end
