class Nonprofit < ActiveRecord::Base
  has_one :interest, as: :interested, dependent: :destroy

  has_many :events, depedent: :destroy

  validates :name, presence: true, uniqueness: true

  # TODO: nested form
  # validates :interest, presence: true
end
