Then /^(?:|I )should see ([^"]*)'s ([^"]*)$/ do |username, property|
  user = user_from username
  value = user.send(property)
  if response.respond_to? :should
    response.should contain(value)
  else
    assert_contain text
  end
end