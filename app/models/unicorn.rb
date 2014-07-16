class Unicorn < ActiveRecord::Base
  has_many :engagements
  has_many :beacons, :through => :engagements
end
