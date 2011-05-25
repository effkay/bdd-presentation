Given /^I am a User$/ do
end

Then /^I should see a the beta sign up form$/ do
  page.should have_css('#new_contact')
end

Then /^my information should be saved$/ do
  Contact.all.size.should be 1
end
