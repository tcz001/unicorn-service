class Beacon < ActiveRecord::Base
  attr_accessible :UUID, :location, :major, :minor
  has_many :engagements
  has_many :unicorns, :through => :engagements
end
