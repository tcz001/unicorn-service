class Beacon < ActiveRecord::Base
  attr_accessible :UUID, :location, :major, :minor
end
