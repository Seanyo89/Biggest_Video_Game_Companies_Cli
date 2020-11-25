class BiggestVideoGameCompaniesCli::Company
 attr_accessor :name, :position, :url

 def self.today
   self.scrape_companies
 end

  
 def self.scrape_companies
   companies = []
   companies << self.scrape_alltopeverything
      
   companies
 end
  
 def self.alltopeverything
   doc = Nokogiri::HTML(open("https://alltopeverything.com/top-10-biggest-video-game-companies/"))
  
   company= self.new
   company.name = doc.search("h3.company-title").text.strip
   company.position = doc.search("div.kt-info-box").text.strip
   company.url = doc.search("a.kt-blocks-info-box-learnmore info-box-link").first.attr("href").strip
      
  
    company
  end
  
end
  
    