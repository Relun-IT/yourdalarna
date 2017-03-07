class AddAddressToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :address, :string
  end
end
