# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'puma', '>= 3.12.3'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'

gem 'coffee-rails', '~> 4.2'
gem 'haml'
gem 'sass-rails', '~> 5.0'
# Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Turbolinks makes navigating web application faster. More: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# JSON APIs building with ease. More: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'bootstrap', '~> 4.4.1'
gem 'cocoon'
gem 'devise'
gem 'jquery-rails'
gem 'kaminari'
gem 'materialize-sass', '~> 1.0.0'
gem 'simple_form'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and
  # get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3'
end

group :development do
  # Access an interactive console on exception pages or by calling
  # 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping the application
  # running in the background.
  # More: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
