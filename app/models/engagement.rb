class Engagement < ActiveRecord::Base
  belongs_to :beacon
  belongs_to :unicorn
end
