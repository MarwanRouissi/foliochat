class Message < ApplicationRecord
  validates :user_question, presence: true
  after_create :fetch_ai_answer

  private

  def fetch_ai_answer
    ChatbotJob.perform_later(self)
  end
end
