class Event < ActiveRecord::Base
  validates :name, :location, :start_time, :presence => true
end
