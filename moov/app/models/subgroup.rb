class Subgroup < ActiveRecord::Base
  has_one :interest, as: :interested, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  # TODO: nested form
  # validates :interest, presence: true
end
