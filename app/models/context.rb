class Context < ActiveRecord::Base
  has_many :quips
  validates_presence_of :situation
  validates_uniqueness_of :situation
end
