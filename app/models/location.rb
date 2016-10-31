class Location < ApplicationRecord
  belongs_to :event

  attr_reader :building, :room, :latitude, :longitude
  

  def initialize(building, room, latitude, longitude)
    @building, @room, @latitude, @longitude = building, room, latitude, longitude
  end

  # gets building
  def building 
    @building  
  end

  # gets room
  def room
    @room
  end

  # gets latitude
  def latitude
    @latitude
  end

  # gets longitude
  def longitude
    @longitude
  end
 
end
