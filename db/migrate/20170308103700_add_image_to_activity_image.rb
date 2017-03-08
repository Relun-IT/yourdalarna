class AddImageToActivityImage < ActiveRecord::Migration[5.0]
  def change
    add_attachment :activity_images, :image
  end
end
