class Target < ActiveRecord::Base
  devise :database_authenticatable
  has_many :quips
  validates_presence_of :person
  validates_uniqueness_of :person
end
