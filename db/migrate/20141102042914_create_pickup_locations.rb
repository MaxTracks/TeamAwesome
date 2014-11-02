class CreatePickupLocations < ActiveRecord::Migration
  def change
    create_table :pickup_locations do |t|
      t.string :location
      t.string :latitude
      t.string :longitude
      t.string :details
      t.string :items

      t.timestamps
    end
  end
end
