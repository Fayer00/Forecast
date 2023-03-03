class WeatherController < ApplicationController
  before_action :authenticate_user!

  def index
    @history = SearchHistory.where(user_id: current_user.id).by_recently_created.limit(20)
  end

  def search
    city = WeatherApi::GetWeather::Search.new(params)
    weather = city.get_climate
    puts "aaaaa #{weather}"
    @weather = SearchHistory.new(city: weather[:city],latitude: weather[:latitude],longitude: weather[:longitude],
                                     temp_c: weather[:celsius],temp_f: weather[:fahrenheit], user: current_user)

    if @weather.save
      @weather
    else
      flash[:alert] = 'City not found'
      render action: :index
    end
  end
end