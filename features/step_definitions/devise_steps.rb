Given /^(?:|I )am not signed in$/ do
  visit path_to 'sign out page'
end

Given /^I am signed in as (.+)$/ do |user|
  visit path_to("sign in page")
  case user
    when 'Pam'
      fill_in "Email", :with => 'pam@producer.com'
    when 'Sam'
      fill_in "Email", :with => 'sam@speaker.com'
    when 'Ari'
      fill_in "Email", :with => 'ari@attendee.com'
    when 'Vic'
      fill_in "Email", :with => 'vic@visitor.com'
  end
  fill_in "Password", :with => 'seekret!' # All users have the same password in the test db
  click_button("Sign in")
end
