class CreateActivityImages < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_images do |t|
      t.references :activity, foreign_key: true, index: false
      t.references :user, foreign_key: true, index: false
      t.timestamps
    end
  end
end
