When(/^I do something$/) do
  @browser.goto 'southwest.com'
end
Then(/^I get some result$/) do
  expect(@browser.url).to include 'southwest'
end