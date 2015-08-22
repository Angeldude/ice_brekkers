class Quip < ActiveRecord::Base
  devise :database_authenticatable
  acts_as_taggable
  belongs_to :context
  belongs_to :target
  belongs_to :setting
  validates_presence_of :tips, :setting_id, :context_id, :target_id
end
