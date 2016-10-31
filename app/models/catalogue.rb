class Catalogue < ApplicationRecord
  attr_accessor :eventsById  

  def add_event(val)
    @eventsById.push(val)
  end 
 
  def delete_event(val)
    @eventsById.drop(val)
  end
end
