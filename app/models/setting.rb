class Setting < ActiveRecord::Base
  has_many :quips
  validates :set, presence: true, uniqueness: true
end
