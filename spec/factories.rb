Factory.define :user do |u|
  u.email 'user@example.com'
  u.password 'seekret!'
  u.password_confirmation { |p| p.password }
end

Factory.define :producer do |p|
  p.association :user
  p.association :event
end

Factory.define :event do |e|
  e.name 'Event Naming 2010'
  e.location 'International Conference Center'
  e.start_time Time.parse('September 11, 2011 3:42 PM')
end

Factory.define :talk do |t|
  t.level '200'
  t.title 'Crafting the Codez'
  t.abstract 'Uncle Bob Martin talks about code craftsmanship'
  t.association :event
end
