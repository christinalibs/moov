class Event < ActiveRecord::Base
  has_one :interest, as: :interested, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :num_volunteers_needed, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # TODO: put nested form in place
  # validates :interest, presence: true
end
