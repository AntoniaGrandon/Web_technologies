class Progress < ApplicationRecord
  belongs_to :user
  belongs_to :challenge

  validates :points_earned, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :update_frequency, presence: true

  enum :update_frequency, {
    daily: 0,
    weekly: 1,
    monthly: 2,
  }, prefix: true
end
