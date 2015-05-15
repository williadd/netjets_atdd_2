require 'page-object'

class WikipediaHome
  include PageObject

  page_url "http://wikipedia.com"

  link(:en_home, :xpath => "//div[@lang='en']/a[1]")

  def goto_language_home(language)
    send("#{language}_home")
  end
end