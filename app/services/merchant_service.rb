class MerchantService 

  def conn
    Faraday.new(url: "http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def merchants
    get_url("api/v1/merchants")[:data]
  end

  def merchant(merch_id)
    get_url("api/v1/merchants/#{merch_id}")[:data]
  end

  def items_by_merchant(merch_id)
    get_url("api/v1/merchants/#{merch_id}/items")[:data]
  end
  

  def find_merch_by_name(query)
    get_url("api/v1/merchants/find?name=#{query}")[:data]
  end
end




# def conn
#   Faraday.new(url: "https://api.themoviedb.org") do |faraday|
#   faraday.params["api_key"] = Rails.application.credentials.the_movie_db[:key]
#   end
# end 