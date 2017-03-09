class AddAddressToTripRoute < ActiveRecord::Migration[5.0]
  def change
    add_column :trip_routes, :address, :string
  end
end
