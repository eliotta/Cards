class Card < ActiveRecord::Base

  attr_accessible :card 
  validates :card, presence: true
  
 
  def veriff
    veri = 4
  end

  def self.forfind
    clock = 7
  end

end

include Sync

