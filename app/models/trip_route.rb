class TripRoute < ApplicationRecord
  belongs_to :user
  has_many :trip_route_activities, dependent: :destroy

  #enum transport: [10, 20, 40]
  validates :transport, presence: true
  validates :user, presence: true
end
