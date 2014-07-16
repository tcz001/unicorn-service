class Unicorn < ActiveRecord::Base
  attr_accessible :name
  has_many :engagements
  has_many :beacons, :through => :engagements
end
