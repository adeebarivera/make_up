class Api
  BASE_URL = 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl&product_type=lipstick'

  def self.get_makeups
    response = RestClient.get(BASE_URL)
    json = JSON.parse(response.body)
    json.each do |makeup|
      name = makeup["name"]
      price = makeup["price"]
      description = makeup["description"]
      product_api_url = makeup["product_api_url"]
    Make_Up.new(name, price, description, product_api_url)
    end
  end
end
