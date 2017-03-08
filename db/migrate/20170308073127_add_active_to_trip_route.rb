class AddActiveToTripRoute < ActiveRecord::Migration[5.0]
  def change
    add_column :trip_routes, :active, :boolean, null: false, default: false
  end
end
