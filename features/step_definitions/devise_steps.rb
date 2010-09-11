def sign_up_as(user)
	visit path_to("sign up page")
  new_user = Factory.build(user.downcase.to_sym)
	fill_in "Email", :with  => new_user.email
	fill_in "Password", :with => new_user.password
	fill_in "Password confirmation", :with => new_user.password
	click_button("Sign up")
end

def sign_in_as(user)
  visit path_to("sign in page")
  registered = Factory.build(user.downcase.to_sym)
  fill_in "Email", :with => registered.email
  fill_in "Password", :with => registered.password
  click_button("Sign in")  
end

Given /^(?:|I )am not signed in$/ do
  visit path_to 'sign out page'
end

Given /^I have signed up as (.+)$/ do |user|
  sign_up_as user
end

Given /^I am signed in as (.+)$/ do |user|
  sign_up_as user # signing up will sign you in
end

When /^I sign in as (.+)$/ do |user|
  sign_in_as user
end

When /^I sign up as (.+)$/ do |user|
  sign_up_as user
end

