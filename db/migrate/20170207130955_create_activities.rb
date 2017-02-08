class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.text :description, null: false, default: ""
      t.references :trip_route, foreign_key: true, index: false

      t.timestamps
    end
  end
end
