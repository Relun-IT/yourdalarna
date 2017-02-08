class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.text :body, null: false, default: ""
      t.references :activity, foreign_key: true, index: true

      t.timestamps
    end
  end
end
