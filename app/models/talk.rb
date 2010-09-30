# == Schema Information
# Schema version: 20100912222321
#
# Table name: talks
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  abstract   :text
#  level      :string(255)
#  event_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Talk < ActiveRecord::Base
  belongs_to :event
end
