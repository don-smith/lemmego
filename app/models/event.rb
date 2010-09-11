class Event < ActiveRecord::Base
  validates :name, :location, :start_time, :presence => true
  has_many :event_users
  has_many :producers, :through => :event_users, :source => :user
  has_many :attendees, :through => :event_users, :source => :user
  
  def dates
    starts = start_time.strftime("%b %d")
    if end_time
      ends = start_time.month == end_time.month ? end_time.strftime(" - %d") : end_time.strftime(" - %b %d")
      starts + ends
    end
  end
  
  # Fields to add:
  # - short_name for the url
  # - tagline to include before the description
  # - address for the map
  # - rename 'location' to venue
  
end
