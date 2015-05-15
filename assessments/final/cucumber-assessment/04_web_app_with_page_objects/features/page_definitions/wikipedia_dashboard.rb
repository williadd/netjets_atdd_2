require 'page-object'

class WikipediaDashboard
  include PageObject

  span(:featured_article_heading, :id => "From_today.27s_featured_article")
  link(:full_featured_article, :xpath => "//div[@id='mp-tfa']//a/b/..")

  span(:in_the_news_heading, :id => "In_the_news")
  unordered_list(:in_the_news, :xpath => "//div[@id='mp-itn']/ul")

  def recently_deceased_names
    deceased_names = browser.spans(:xpath => "//div[@id='mp-itn']/p/span")
    deceased_names.collect do |item|
      item
    end
  end
end