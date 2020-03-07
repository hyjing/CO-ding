require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

# delete file
Given(/^I am inside a file$/) do
  pending
end

When(/^I click "([^"]*)"$/) do |arg|
  pending
end

Then(/^I should not see the file anymore$/) do
  pending
end

# delete folder
Given(/^I am in the file view$/) do
  pending
end

When(/^I click delete fold$/) do
  pending
end

Then(/^I should not see the folder anymore$/) do
  pending
end

# edit code
Given(/^I am looking at the file$/) do
  pending
end

Then(/^I should be able to edit the code$/) do
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
  pending
end

And(/^I enter "([^"]*)" in Name$/) do |arg|
  pending
end

And(/^I enter "([^"]*)" in Author$/) do |arg|
  pending
end

And(/^the Creation Date is set to today$/) do
  pending
end

Then(/^the new file should appear$/) do
  pending
end

# new folder
Given(/^I am on the create new folder page$/) do
  pending
end

And(/^I enter "([^"]*)" in Fold_Name$/) do |arg|
  pending
end

And(/^I enter "([^"]*)" in Fold_Author$/) do |arg|
  pending
end

Then(/^the new folder should appear$/) do
  pending
end


# open file
Given(/^I am inside a folder$/) do
  pending
end

When(/^I click on a file's "([^"]*)"$/) do |arg|
  pending
end

Then(/^I should be able to read the file$/) do
  pending
end

Then(/^I should be able to create a new file$/) do
  pending
end

Then(/^I should see all folders$/) do
  pending
end

# open folder
Given(/^I am in the folder view$/) do
  pending
end

When(/^I click on a project folder$/) do
  pending
end

Then(/^I should be in the project folder$/) do
  pending
end

Then(/^I should be able to create new project folder$/) do
  pending
end