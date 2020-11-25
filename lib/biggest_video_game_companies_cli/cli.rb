class BiggestVideoGameCompaniesCli::Cli

   def call
      list_companies
      menu
      goodbye
   end

   def list_companies
     put"10 Biggest Video Game Companies:"
     @companies = BiggestVideoGameCompaniesCli::Company.today
     @companies.each.with.index(1) do |company, i|
         puts "#{i}. #{company.name} - #{company.position} - #{company.founded}"
       end
   end  


     def menu
     input = nil
     while input != "exit"
         puts "Enter the number for the company you'd like more info or type exit:"
         input = gets.strip.downcase

        if input.to_i > 0
         the_company = @companies[input.to_i-1]
         puts "#{the_company.name} - #{the_company.position} - #{the_company.founded}"
      elsif input == "list"
         list_companies
      else
         puts "Not sure what you want to look for, type list or exit."
        end
    end
 end

 def goodbye
     puts "Thanks For Coming!!"
    end
end

 
