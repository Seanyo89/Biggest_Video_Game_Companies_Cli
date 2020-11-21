module BiggestVideoGameCompanies

    class Companies

        attr_accessor :name, :location, :trademark


        @@all =[]

        def initialize(name,location)
            @name = name
            @location = location
            save
        end

        def save 
            @@all << self
        end

        def self.all
            @@all
        end

        def self.print_with_index
            self.all.each.with_index(1) do |company, index|
              puts "#{index}. #{company.name}"
            end
          end
        
         def self.find_by_index(index)
             @@all[index] #find company with specified index
         end
         end
        end
        