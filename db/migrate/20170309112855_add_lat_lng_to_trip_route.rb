class AddLatLngToTripRoute < ActiveRecord::Migration[5.0]
  def change
    add_column :trip_routes, :latitude, :float
    add_column :trip_routes, :longitude, :float
  end
end
