class Event < ActiveRecord::Base
  validates :name, :location, :start_time, :presence => true
  
  def dates
    starts = start_time.strftime("%b %d - ")
    ends = start_time.month == end_time.month ? end_time.strftime("%d") : end_time.strftime("%b %d")
    starts + ends
  end
  
  # Fields to add:
  # - short_name for the url
  # - tagline to include before the description
  # - address for the map
  # - rename 'location' to venue
  
end
