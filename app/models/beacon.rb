class Beacon < ActiveRecord::Base
  has_many :engagements
  has_many :unicorns, :through => :engagements
end
