def user_from(username)
  eval(username.downcase)
end

#
# Personas

def pam
  user = Factory.build(:user, 
          :email    => 'pam@producer.com',
          :password => 'seekret!')
end

def ari
  user = Factory.build(:user, 
          :email    => 'ari@attendee.com',
          :password => 'seekret!')
end

def sid
  user = Factory.build(:user,
          :email    => 'sid@speaker.com',
          :password => 'seekret!')
end



