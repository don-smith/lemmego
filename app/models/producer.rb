# == Schema Information
# Schema version: 20100912222321
#
# Table name: event_users
#
#  id         :integer         not null, primary key
#  event_id   :integer
#  user_id    :integer
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Producer < EventUser
end
