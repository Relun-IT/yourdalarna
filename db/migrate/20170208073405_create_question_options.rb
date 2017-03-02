class CreateQuestionOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :question_options do |t|
      t.string :body, null: false, default: ""
      t.boolean :right_answer, null: false, default: false
      t.references :question, foreign_key: true, index: true

      t.timestamps
    end
  end
end
