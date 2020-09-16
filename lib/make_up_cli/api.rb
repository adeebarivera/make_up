class Api
  BASE_URL = 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=nyx&product_type=lipstick'

  def self.get_makeup
    response = RestClient.get(BASE_URL)
    json = JSON.parse(response.body)
    json.each do |makeup|
      name = makeup["name"]
      price = makeup["price"]
      description = makeup["description"]
      api_featured_image = makeup["api_featured_image"]
      Makeup.new(name, price, description, api_featured_image)
    end
  end
end
