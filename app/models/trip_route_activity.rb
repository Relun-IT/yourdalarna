class TripRouteActivity < ApplicationRecord
  belongs_to :trip_route
  belongs_to :activity

  validates :trip_route, presence: true, uniqueness: { scope: :activity }

  scope :top_three, -> { order(created_at: :desc).last(3) }
end
