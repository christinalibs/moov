class Event < ActiveRecord::Base
  has_one :interest, as: :interested

  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :num_volunteers_needed, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
