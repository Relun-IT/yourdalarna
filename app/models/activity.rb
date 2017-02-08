class Activity < ApplicationRecord
  has_many :trip_route_activities, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :trivia, dependent: :destroy
  has_many :feedbacks, dependent: :destroy

  validates :description, presence: true
end
