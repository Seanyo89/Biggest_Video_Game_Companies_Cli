require 'HTTParty'
require 'Nokogiri'

class Scraper
        
 attr_accessor :parse_page

 def initialize    
 doc = HTTParty.get("https://www.alltopeverything.com/top-10-biggest-video-game-companies/")
 @parse_page ||= Nokogiri::HTML(doc)
  end
  
 names = parse_page.css ("h3.lister-item-header")

  
 position = parse_page.css


    
    
        