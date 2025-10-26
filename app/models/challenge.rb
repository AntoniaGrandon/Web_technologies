class Challenge < ApplicationRecord
  belongs_to :user
  has_many :progresses, dependent: :destroy

  validates :name, presence: true
  validates :goal, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :start_date_must_be_before_end_date

  enum :categories, {
    Cardio: 0,
    Lifting: 1,
    Eating: 2,
    Habits: 3,
    Study: 4,
  }, prefix: true

  def start_date_must_be_before_end_date
    if start_date.present? && end_date.present? && start_date >= end_date
      errors.add(:start_date, "must be before the end date")
    end
  end

end
