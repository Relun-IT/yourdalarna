class Activity < ApplicationRecord
  has_many :trip_route_activities, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :trivia, dependent: :destroy
  has_many :feedbacks, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode

  has_attached_file :image, styles: {
    thumb: "35x35#",
    square: "200x200#",
    medium: "300x300#"
  }, default_url: "/default_avatar.png"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
