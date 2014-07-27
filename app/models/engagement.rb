class Engagement < ActiveRecord::Base
  belongs_to :beacon
  belongs_to :unicorn
  default_scope { where ("engagements.created_at >= '#{(Time.zone.now - 60.seconds).to_s(:db)}'") }
  scope :expired, -> { where ("engagements.created_at < '#{(Time.zone.now - 60.seconds).to_s(:db)}'") }
end
