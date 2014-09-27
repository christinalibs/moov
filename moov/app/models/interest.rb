class Interest < ActiveRecord::Base
  before_save :set_defaults
  belongs_to :interested, polymorphic: true

  def set_defaults
    self.farming    ||= false
    self.fitness    ||= false
    self.family     ||= false
    self.civic      ||= false
    self.arts       ||= false
    self.tech       ||= false
    self.education  ||= false
  end
end
