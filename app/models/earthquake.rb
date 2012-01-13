class Earthquake < ActiveRecord::Base
  has_many :earthquake_regions
  has_many :regions, :through => :earthquake_regions

  accepts_nested_attributes_for :earthquake_regions, :reject_if => :all_attrs_blank

end
