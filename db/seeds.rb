# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
# 
# To seed the test db, run: rake db:seed RAILS_ENV=test
# 

#
# Users
#
pam = User.create(:email => 'pam@producer.com', 
                  :password => 'seekret!', 
                  :password_confirmation => 'seekret!')
                  pam.save
                  
sam = User.create(:email => 'sam@speaker.com', 
                  :password => 'seekret!', 
                  :password_confirmation => 'seekret!')
                  sam.save

ari = User.create(:email => 'ari@attendee.com', 
                  :password => 'seekret!', 
                  :password_confirmation => 'seekret!')
                  ari.save
                  
vic = User.create(:email => 'vic@visitor.com', 
                  :password => 'seekret!', 
                  :password_confirmation => 'seekret!')
                  vic.save

# 
# Events
# 
devcon = Event.create(:name => 'DevCon Northwest',
                      :description => "The best developer conference in the northwest",
                      :start_time => Time.new + (60 * 60 * 24 * 30), # 30 days from now
                      :end_time => Time.new + (60 * 60 * 24 * 33), # 3 day event
                      :location => 'Seattle City Center')
                      devcon.save