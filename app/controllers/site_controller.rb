class SiteController < ApplicationController
  def home
    @articles = Article.last(3)
    @services = [1, 2, 3, 4].map do |i|
      SiteContent.find_or_create_by(name: "MainService#{i}")
    end
  end

  def faq
    @content = SiteContent.find_or_create_by(name: "faq"){|c| c.title = "Gyakran ismételt kérdések"}
  end
end
