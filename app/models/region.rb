class Region < ActiveRecord::Base
  has_many :locations

  def self.sort_by_name
    order(:name)
  end
end
