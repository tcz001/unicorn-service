class CreateUnicorns < ActiveRecord::Migration
  def change
    create_table :unicorns do |t|
      t.string :name

      t.timestamps
    end
  end
end
