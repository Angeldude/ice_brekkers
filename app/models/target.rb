class Target < ActiveRecord::Base
  has_many :quips
  validates_presence_of :person
  validates_uniqueness_of :person
end
