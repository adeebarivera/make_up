class Makeup

    attr_accessor :name, :price, :description, :image_link, :product_type
    @@all = [] #saves all instances of makeup that have been initialized

    def initialize(name, price, description, image_link, product_type) #.new in api.rb initializes new instances
      @name = name
      @price = price
      @description = description
      @image_link = image_link
      @product_type = product_type
      @@all << self #every new makeup will save itself
    end

    def self.all #making array accesable/ makeup.all
        @@all
    end

end
