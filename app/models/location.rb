class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    joins(:region).where(regions: { name: region })
  end

  def self.alphabetically_by_region_and_name
    joins(:region).merge(Region.sort_by_name).order(:name)
  end
end
