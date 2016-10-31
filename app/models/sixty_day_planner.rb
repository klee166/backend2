class SixtyDayPlanner < ApplicationRecord
  has_many :event
  has_many :day_planner
end
