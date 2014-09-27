class Interest < ActiveRecord::Base
  belongs_to :interested, polymorphic: true

  validates :interested, presence: true
end
