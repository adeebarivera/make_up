class Makeup

    attr_accessor :name, :price, :description, :image_link
    @@all = []

    def initialize(name, price, description, image_link)
      @name = name
      @price = price
      @description = description
      @image_link = image_link
      @@all << self
    end

    def self.all
        @@all
    end

end
