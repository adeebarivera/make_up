class Makeup

    attr_accessor :name, :price, :description, :image_link, :product_type
    @@all = []

    def initialize(name, price, description, image_link, product_type)
      @name = name
      @price = price
      @description = description
      @image_link = image_link
      @product_type = product_type
      @@all << self
    end

    def self.all
        @@all
    end

end
