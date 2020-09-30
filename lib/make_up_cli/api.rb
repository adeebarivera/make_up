class Api
  BASE_URL = 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=nyx'

  def self.get_makeup
    response = RestClient.get(BASE_URL)
    json = JSON.parse(response.body)
    json.each do |makeup|
      name = makeup["name"]
      price = makeup["price"]
      description = makeup["description"]
      api_featured_image = makeup["api_featured_image"]
      product_type = makeup["product_type"]
      Makeup.new(name, price, description, api_featured_image, product_type) #create new instance
    end
  end
end
