class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :UUID
      t.string :major
      t.string :minor
      t.string :location

      t.timestamps
    end
  end
end
