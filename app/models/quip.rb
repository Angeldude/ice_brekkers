class Quip < ActiveRecord::Base
  acts_as_taggable
  belongs_to :context
  belongs_to :target
  validates_presence_of :tips
end
