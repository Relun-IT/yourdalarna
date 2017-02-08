class TripRoute < ApplicationRecord
  belongs_to :user
  has_many :trip_route_activities, dependent: :destroy

  enum transport: [:walk, :bike, :car]
  validates :transport, presence: true
  validates :user, presence: true
end
