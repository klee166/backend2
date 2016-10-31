class Offer < ApplicationRecord
  belongs_to :event
  attr_reader :name, :numUsed, :maxUse
  attr_accessor :numUsed

  def initialize(name, numUsed, maxUse)
    @name, @numUsed, @maxUse = name, numUsed, maxUse
  end

  #increment the number of used ones
  def increase_used
    self[:numUsed] += 1
  end
end
