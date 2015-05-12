require 'page-object'

include PageObject::PageFactory

Given(/^I do something$/) do
  visit_page MyPage
end