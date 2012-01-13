class Region < ActiveRecord::Base
  has_many :earthquake_regions
  has_many :earthquakes, :through => :earthquake_regions
end
