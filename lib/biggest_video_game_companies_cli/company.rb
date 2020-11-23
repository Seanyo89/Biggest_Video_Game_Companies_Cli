class Company

    attr_accessor :name, :location, :twitter, :bio, :profile_url
  
    @@all = []
  
    def initialize(company_hash)
      company_hash.each do |attribute, value|
        self.send("#{attribute}=", value)
      end
      @@all << self
    end
  
    def self.create_from_collection(company_array)
      company_array.each do |company_hash|
        Company.new(company_hash)
      end
    end
  
    def add_company_attributes(attributes_hash)
      attributes_hash.each do |attr, value|
        self.send("#{attr}=", value)
      end
      self
    end
  
    def self.all
      @@all
    end
  end