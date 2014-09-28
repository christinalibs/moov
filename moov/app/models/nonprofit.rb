class Nonprofit < ActiveRecord::Base
  has_one :interest, as: :interested, dependent: :destroy
  has_one :leader,  class_name: 'Volunteer'

  has_many :events, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  # TODO: nested form
  # validates :interest, presence: true
end
