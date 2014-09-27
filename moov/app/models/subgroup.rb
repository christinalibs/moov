class Subgroup < ActiveRecord::Base
  has_one :interest, as: :interested

  validates :name, presence: true, uniqueness: true
  validates :interest, presence: true
end
