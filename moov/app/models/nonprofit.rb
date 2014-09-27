class Nonprofit < ActiveRecord::Base
  has_one :interest, as: :interested
  validates :name, presence: true, uniqueness: true
end
