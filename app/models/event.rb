class Event < ApplicationRecord

  has_attached_file :image, styles: {
    thumb: "35x35#",
    square: "200x200#",
    medium: "300x300#"
  }, default_url: "/default_avatar.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  geocoded_by :address
  after_validation :geocode

end
