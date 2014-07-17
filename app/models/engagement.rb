class Engagement < ActiveRecord::Base
  belongs_to :beacon
  belongs_to :unicorn
  default_scope {where ("engagements.created_at >= '#{(Time.zone.now - 10.minute).to_s(:db)}'")}
end
