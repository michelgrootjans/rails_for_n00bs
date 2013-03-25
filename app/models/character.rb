class Character < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true, uniqueness: true

  before_create :apply_defaults

  def apply_defaults
    self.hit_points = 20
    self.gold       = 100
  end
end