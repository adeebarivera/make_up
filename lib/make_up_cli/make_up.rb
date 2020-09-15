class Makeup

    attr_accessor :name, :price, :description, :product_api_url
    @@all = []

    def initialize(name, price, description, product_api_url)
      @name = name
      @price = price
      @description = description
      @product_api_url = product_api_url
        @@all << self
    end

    def self.all
        @@all
    end

end
