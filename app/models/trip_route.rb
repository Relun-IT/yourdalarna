class TripRoute < ApplicationRecord
  belongs_to :user
  has_many :trip_route_activities, dependent: :destroy

  validates :transport, presence: true
  validates :user, presence: true

  geocoded_by :address
  after_validation :geocode

  scope :by_date, -> { order(created_at: :desc) }
  scope :latest, -> { order(created_at: :desc).first }
end
