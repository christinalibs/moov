class Interest < ActiveRecord::Base
  belongs_to :interested, polymorphic: true
end
