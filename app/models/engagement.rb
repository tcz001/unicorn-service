class Engagement < ActiveRecord::Base
  attr_accessible :beacon_id, :engagement_date, :unicorn_id
  belongs_to :beacon
  belongs_to :unicorn
end
