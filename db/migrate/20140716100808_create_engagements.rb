class CreateEngagements < ActiveRecord::Migration
  def change
    create_table :engagements do |t|
      t.integer :beacon_id
      t.integer :unicorn_id
      t.datetime :engagement_date

      t.timestamps
    end
  end
end
