require 'Nokogiri'
require 'Pry'


class Scraper
    def self.scrape_index_page("https://www.alltopeverything.com/top-10-biggest-video-game-companies/")
        index_page = Nokogiri::HTML(open("https://www.alltopeverything.com/top-10-biggest-video-game-companies/")
        companies = []
        index_page.css("div.kt-info-box").each do |info|
          info.css(".company-info a").each do |company|
            company_profile_link = "#{company.attr('href')}"
            company_location = company.css('.company-location').text
            company_name = company.css('.company-name').text
            companies << {name: company_name, location: company_location,}
          end
        end
        companies
      end
    
      

   