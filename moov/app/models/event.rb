class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :num_volunteers_needed, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
