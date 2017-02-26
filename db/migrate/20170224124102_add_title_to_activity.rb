class AddTitleToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :title, :string, null: false, default: ""
  end
end
