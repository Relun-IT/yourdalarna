class AddImageToActicity < ActiveRecord::Migration[5.0]
  def change
    add_attachment :activities, :image
  end
end
