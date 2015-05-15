require 'locale'
require 'page_definitions/wikipedia_home'
require 'page-object'
require 'test/unit'

include PageObject::PageFactory

When(/^I access Wikipedia for my language$/) do
  visit_page WikipediaHome do |page|
    language = Locale.current.language
    page.goto_language_home(language)
  end
end

Then /^I am shown a summary of a featured article on the dashboard$/ do
  on_page WikipediaDashboard do |page|
    assert page.featured_article_heading?
  end
end

Then /^I can access the full article from the dashboard$/ do
  on_page WikipediaDashboard do |page|
    assert page.full_featured_article?
    page.full_featured_article
  end
  on_page WikipediaArticle do |page|
    assert page.article_not_found? == false
  end
end

Then(/^I am shown summaries of several recent news items on the dashboard$/) do
  on_page WikipediaDashboard do |page|
    assert page.in_the_news_heading?
    assert page.in_the_news_element.items.size > 0
  end
end

Then(/^I am shown names of (\d+) recently deceased individuals on the dashboard$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
