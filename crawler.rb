require 'mechanize'

class Crawler
  def perform(url)
    agent = Mechanize.new
    page = agent.get(url)
    page.search('//a').map do |link|
      href = link.attr('href')
      href.include?('http') ? href : "#{url}#{href[1..]}"
    end.uniq.compact
  end
end