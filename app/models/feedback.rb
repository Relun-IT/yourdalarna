class Feedback < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  validates :body, presence: true
  validates :activity, presence: true

  scope :first_four_by_date, -> { order(created_at: :desc).first(4) }
end
