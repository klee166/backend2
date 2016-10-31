class Filter < ApplicationRecord
  belongs_to :user
  attr_accessor :isOn, :preferences

  def isOn=(val)
    @isOn = val
  end

  def setEventType(val)
    @preferences.push(val)
  end
end
