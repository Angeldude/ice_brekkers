class Setting < ActiveRecord::Base
  devise :database_authenticatable
  has_many :quips
  validates :set, presence: true, uniqueness: true
end
