source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"


gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "sprockets-rails"
gem "pg"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails", '~> 1.0.0'
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "devise"
gem 'httparty'
gem 'sassc-rails'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "standard"
  gem "pg_query"
  gem "faker" # Library that generates fake data
  gem "shoulda-matchers", "~> 5.0"
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-capybara', require: false
end

group :development do
  gem "web-console"
end

group :test do

  gem "capybara"
  gem "selenium-webdriver"
  gem 'webdrivers', '~> 5.0', require: false

  gem "webmock" # Library to mock http requests
  gem "timecop"

end
