class Unicorn < ActiveRecord::Base
  attr_accessible :name
  belongs_to Beacon
end
