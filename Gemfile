source 'https://rubygems.org'
ruby '2.2.2'
gem 'rails', '4.2.1'

gem 'active_model_serializers'
gem 'bluecloth'
gem 'coffee-rails'
gem 'decent_exposure'
gem 'draper'
gem 'easy_tokens'
gem 'jquery-rails'
gem 'materialize-sass'
gem 'pg'
gem 'redcarpet'
gem 'sass-rails'
gem 'sendgrid'
gem 'simple_form'
gem 'slim-rails'
gem 'thin'
gem 'uglifier'
gem 'puma'

## deployment
gem 'capistrano', '~> 3.2.1'
gem 'capistrano-rails'
gem 'capistrano-bundler'
gem 'capistrano-passenger'
gem 'rvm1-capistrano3', require: false

## API
gem 'grape'
gem 'grape-entity'
gem 'grape-swagger-rails'
gem 'grape-swagger'
gem 'hashie-forbidden_attributes' # needed to make grape params validation work
gem 'factory_girl_rails'
gem 'faker'

group :development do
  gem 'better_errors'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug'
  gem 'guard-rubocop'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'spring', '1.3.4'
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'timecop'
end
