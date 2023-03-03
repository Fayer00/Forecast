class WeatherApiService
  BASE_URL = "http://api.weatherapi.com/v1".freeze
  TOKEN = ENV.fetch('WEATHER_API_TOKEN', '')

  class << self
    def error_response(response)
      { message: response.body, status: response.code }
    end

    def handle_response(response)
      return error_response(response) unless response.code == 200

      JSON.parse(response.body)
    end

    def raw_climate(query)
      #http://api.weatherapi.com/v1/current.json?key=6fbc25241b444dd4abb20609230203&q=SCL&aqi=no
      # posts = Rails.cache.fetch(["my_category_key"], expires_in: 24.hours) do
      #   JSON.parse(open("https://bebedorminhoco.com.br/wp-json/wp/v2/posts?categories=96&_embed").read)
      # end

      response =  Rails.cache.fetch([query], expires_in: 12.hours) do
        HTTParty.get("#{BASE_URL}/current.json?key=#{TOKEN}&q=#{query}")
      end
      handle_response(response)
    end
  end
end