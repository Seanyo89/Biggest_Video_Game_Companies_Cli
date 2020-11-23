  class BiggestVideoGameCompanies::CLI

          BASE_PATH = "https://www.alltopeverything.com/top-10-biggest-video-game-companies/"
        
          def start
            make_companies
            add_attributes_companies
            display_companies
          end
        
          def make_companies
            company_array = Scraper.scrape_index_page(BASE_PATH + 'index.html')
            Company.create_from_collection(company_array)
          end
        
          def add_attributes_to_companies
            C.all.each do |companies|
              attributes = Scraper.scrape_profile_page(BASE_PATH + company.profile_url)
              company.add_company_attributes(attributes)
            end
          end
        
          def display_companies
            Company.all.each do |company|
              puts "#{company.name.upcase}".colorize(:blue)
              puts "  location:".colorize(:light_blue) + " #{company.location}"
              puts "  bio:".colorize(:light_blue) + " #{company.bio}"
              puts "  twitter:".colorize(:light_blue) + " #{company.twitter}"
        
            end
          end