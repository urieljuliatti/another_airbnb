source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', require: false

gem 'cssbundling-rails', '~> 1.1'

gem 'devise'

gem 'importmap-rails'

gem 'jbuilder'

gem 'jsbundling-rails', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'rails', '~> 7.0.4', '>= 7.0.4.2'

gem 'sqlite3', '~> 1.4'

gem 'sprockets-rails'

gem 'stimulus-rails'

gem 'turbo-rails'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]


group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'pry'
  gem 'pry-byebug'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.1'
  gem 'rspec-rails', '~> 6.0'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'rails-controller-testing'
  gem 'database_cleaner-active_record', '~> 2.0'
  gem 'shoulda-matchers', '~> 5.3'
  gem 'simplecov', '~> 0.22.0', require: false
end
