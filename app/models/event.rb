# == Schema Information
# Schema version: 20100912222321
#
# Table name: events
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :text
#  start_time  :datetime
#  end_time    :datetime
#  location    :string(255)
#  cost        :integer         default(0)
#  created_at  :datetime
#  updated_at  :datetime
#

class Event < ActiveRecord::Base
  validates :name, :location, :start_time, :presence => true
  has_many :talks
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
