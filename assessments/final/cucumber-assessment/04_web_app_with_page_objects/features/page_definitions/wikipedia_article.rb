require 'page-object'

class WikipediaArticle
  include PageObject

  div(:no_article, :xpath => "//div[@id='mw-content-text']/div[@class='noarticletext']")

  def article_not_found?
    no_article_element.exists?
  end
end