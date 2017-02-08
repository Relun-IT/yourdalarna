class CreateTripRouteActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_route_activities do |t|
      t.references :trip_route, foreign_key: true, index: true
      t.references :activity, foreign_key: true, index: true

      t.timestamps
    end
  end
end
