class User < ApplicationRecord
  has_many :challenges, dependent: :destroy
  has_many :progresses, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :role, presence: true
  validates :badges, numericality: { greater_than_or_equal_to: 0 }

  enum :role, {
    user: 0,
    creator: 1,
    admin: 2
  }, prefix: true

end