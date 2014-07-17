class RemoveEngagementDateFromEngagement < ActiveRecord::Migration
  def change
    remove_column :engagements, :engagement_date, :datetime
  end
end
