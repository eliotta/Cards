class Card < ActiveRecord::Base
  attr_accessible :card
  validates :card, presence: true
end
