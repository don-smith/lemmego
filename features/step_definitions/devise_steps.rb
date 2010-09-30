Given /^(?:|I )am not signed in$/ do
  visit path_to 'sign out page'
end

Given /^I have signed up as (.+)$/ do |username|
  user = user_from username
	visit path_to("sign up page")
	fill_in "Email",                 :with => user.email
	fill_in "Password",              :with => user.password
	fill_in "Password confirmation", :with => user.password
	click_button("Sign up")
end

Given /^I am signed in as (.+)$/ do |username|
  user = user_from(username)
  visit path_to("sign in page")
  fill_in "Email",    :with => user.email
  fill_in "Password", :with => user.password
  click_button("Sign in")  
end

When /^I sign in as (.+)$/ do |username|
  Given "I am signed in as #{username}"
end

When /^I sign up as (.+)$/ do |username|
  Given "I have signed up as #{username}"
end

