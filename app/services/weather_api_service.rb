# frozen_string_literal: true

class WeatherApiService
  BASE_URL = 'http://api.weatherapi.com/v1'
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

      response = Rails.cache.fetch([query], expires_in: 12.hours) do
        HTTParty.get("#{BASE_URL}/current.json?key=#{TOKEN}&q=#{query}")
      end
      handle_response(response)
    end
  end
end
