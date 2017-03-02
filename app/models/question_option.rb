class QuestionOption < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validates :question, presence: true
end
