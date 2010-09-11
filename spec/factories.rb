Factory.define :pam, :class => User do |u|
  u.email 'pam@producer.com'
  u.password 'seekret!'
  u.password_confirmation { |p| p.password }
end

Factory.define :producer, :class => Producer do |p|
  p.user :pam
  p.event :devcon
end

Factory.define :devcon, :class => Event do |e|
  e.name 'DevCon 2010'
  e.location 'Seattle City Center'
  e.start_time Time.parse('September 16, 2011 3:42 PM')
end
