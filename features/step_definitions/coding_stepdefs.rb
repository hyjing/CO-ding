require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

# delete file
Given(/^I am inside a file$/) do
  click_link "Delete"
end

Then(/^I should not see the file "(.*)" anymore$/) do |filename|
  visit '/fold'
  page.should have_no_content(filename)
end

# delete folder
Given(/^I am in the file view$/) do
  page.should have_content("All Codes In This Fold")
end

When(/^I click delete fold$/) do
  click_link "Delete fold"
end

Then(/^I should not see the folder "(.*)" anymore$/) do |foldname|
  visit '/fold'
  page.should have_no_content(filename)
end

# edit code
Given(/^I am looking at the file$/) do
  page.should have_content("All Codes In This Fold")
end

Then(/^I should be able to edit the code$/) do
  # didn't see edit
  pending
end

Given(/^I am editing the file$/) do
  pending
end

Then(/^I should be able to see the saved changes$/) do
  pending
end

# new_file
Given(/^I am on the create new file page$/) do
  page.should have_content("All Codes In This Fold")
  click_link "Add new code"
end

And(/^I enter "([^"]*)" in Name$/) do |arg|
  fill_in("Name", :with => arg)
end

And(/^I enter "([^"]*)" in Author$/) do |arg|
  fill_in("Author", :with => arg)
end

And(/^the Creation Date is set to today$/) do
  # default date is today
  pass
end

Then(/^the new file should appear$/) do
  click_button("Save Changes")
end

# new folder
Given(/^I am on the create new folder page$/) do
  page.should have_content("All Folds")
  click_link "Add new fold"
end

And(/^I enter "([^"]*)" in Fold_Name$/) do |arg|
  fill_in("Fold_Name", :with => arg)
end

And(/^I enter "([^"]*)" in Fold_Author$/) do |arg|
  fill_in("Fold_Author", :with => arg)
end

And(/^the Creation Date is set to today$/) do
  # default date is today
  pass
end

Then(/^the new folder should appear$/) do
  click_button("Save Changes")
end


# open file
Given(/^I am inside a folder$/) do
  page.should have_content("All Codes In This Fold")
end

When(/^I click on a file's "([^"]*)"$/) do |arg|
  click_link "More about " + arg
end

Then(/^I should be able to read the file$/) do |code|
  page.should have_content(code)
end
# not a functionality
# Then(/^I should be able to create a new file$/) do
#   pending
# end

Then(/^I should see all folders$/) do
  click_link "Back to fold list"
  page.should have_content("All Folds")
end

# open folder
Given(/^I am in the folder view$/) do
  page.should have_content("All Folds")
end

When(/^I click on a project folder$/) do |folder_name|
  click_link "More about " + folder_name
end

Then(/^I should be in the project folder$/) do
  page.should have_content("All Codes In This Fold")
end

Then(/^I should be able to create new project folder$/) do
  click_link "Add new code"
  page.should have_content("Create New Code")
end