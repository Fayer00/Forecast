# frozen_string_literal: true

module WeatherApi
  module GetWeather
    class Search
      attr_reader :query

      def initialize(params)
        @query = filterable_params(params)
      end

      def get_climate
        Rails.logger.debug "asdfff #{@query}"
        climate = WeatherApiService.raw_climate(@query['query'])

        {
          city: climate['location']['name'],
          latitude: climate['location']['lat'],
          longitude: climate['location']['lon'],
          celsius: climate['current']['temp_c'],
          fahrenheit: climate['current']['temp_f']
        }
      end

      private

      def filterable_params(params)
        params.slice(:query)
      end
    end
  end
end
