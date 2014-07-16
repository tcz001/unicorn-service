class Beacon < ActiveRecord::Base
  attr_accessible :UUID, :location, :major, :minor
  has_many Unicorn
end
