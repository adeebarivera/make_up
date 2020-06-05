class Api
  BASE_URL = 'http://makeup-api.herokuapp.com/api/v1/products.json?brand=covergirl&product_type=lipstick'

  def self.get_makeup
    res = RestClient.get(BASE_URL)
    data = JSON.parse(res.body)
    binding.pry
  end 
end
