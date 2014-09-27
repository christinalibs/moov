class Volunteer < ActiveRecord::Base
  has_one :interest, as: :interested

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, confirmation: true, uniqueness: true,
    format: { with: VALID_EMAIL_REGEX }
  validates :bday, presence: true
  # validates :approved?
  # validates :leader?
  # validates :admin?
end
