class AddRoleToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, nil: false, default: false
  end
end
