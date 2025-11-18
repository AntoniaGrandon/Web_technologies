class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :challenges, dependent: :destroy
  has_many :progresses, dependent: :destroy

  # Set sensible defaults so Devise registration works without extra fields in the form
  before_validation :set_defaults, on: :create

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :role, presence: true
  validates :badges, numericality: { greater_than_or_equal_to: 0 }

  enum :role, {
    user: 0,
    admin: 1
  }, prefix: true

  def admin?
    self.role == 'admin' 
  end

  private
  #si agrego un usuario, queda con rol user y 0 badges
  def set_defaults
    self.role ||= :user
    self.badges ||= 0
  end

end