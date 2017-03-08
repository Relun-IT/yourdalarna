class Question < ApplicationRecord
  belongs_to :activity
  has_many :question_options, dependent: :destroy

  validates :body, presence: true
  validates :activity, presence: true
end
