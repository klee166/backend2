class User < ApplicationRecord

  has_one :filter
  attr_accessor :isConfirmed, :confirmationCode


  def confirmationCode=(val)
    @confirmationCode = val
  end

  def setEventType(val)
    self.filter.setEventType(val)
  end

  def isConfirmed=(val)
    @isConfirmed = val
  end

  def turn_on_filter
    self.filter.isOn=true
  end

  def turn_off_filter
    self.filter.isOn=false
  end

end
