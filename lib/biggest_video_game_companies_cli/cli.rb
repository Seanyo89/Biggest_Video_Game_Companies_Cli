module BiggestVideoGameCompanies

    class CLI

        def call
            puts "Welcome!"
        end

        def start
            display_list_of_companies
            display_company_info(user_input)
            more_info
        end

        def display_list_of_companies