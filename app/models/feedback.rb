class Feedback < ApplicationRecord
  belongs_to :activity

  validates :body, presence: true
  validates :activity, presence: true
end
