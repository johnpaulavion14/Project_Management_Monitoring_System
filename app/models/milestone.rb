class Milestone < ApplicationRecord
  serialize :assigned, Array
  belongs_to :user
  belongs_to :rock
  has_many :messages
end