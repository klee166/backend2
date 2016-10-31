class Event < ApplicationRecord
  has_one :location
  has_one :map
  has_many :offer
  
  attr_accessor :isLit, :name
  attr_reader :id, :expectedNum, :name, :ticketPrice, :description, :location, :isLit, :numAddedToCal, :numCheckIn
 
  # sets lit value
  def isLit=(val)
    self[:isLit] = val
  end

  # edits the name of the event
  def name=(val)
    self[:name] = val
  end

  #edits the description of the event
  def description=(val)
    self[:description] = val
  end

  #increments the number of checkins 
  def add_num_checkin
    self[:numCheckIn] += 1
  end

  # get the number of added events to calendar
  def numAddedToCal
    self[:numAddedToCal]
  end

  # increments the number of added events to calendar
  def inc_AddedToCal
    self[:numAddedToCal] += 1
  end

end
