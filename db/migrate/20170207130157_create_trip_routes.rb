class CreateTripRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :trip_routes do |t|
      t.integer :transport, null: false
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
