Then /^(?:|I )should see ([^"]*)'s ([^"]*)$/ do |obj, prop|
  o = Factory.build(obj.downcase.to_sym)
  value = o.send(prop)
  if response.respond_to? :should
    response.should contain(value)
  else
    assert_contain text
  end
end