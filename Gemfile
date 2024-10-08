source 'https://rubygems.org'
# ruby '2.3.4'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# generate pdf
gem 'wicked_pdf'
#we need the new binary here, so that we can be OS independent
gem 'wkhtmltopdf-binary'

# sidekiq + sinatra
# gem 'sidekiq'
# gem 'sinatra'
# generate good looking ARecord
gem 'hirb'
# generate code invoice
gem 'foreman'
gem 'bootstrap'
#use for building ecommerce
gem 'activeadmin'
gem 'devise'
# manage roles
gem "cancan"
gem "rolify"
# listing
gem 'kaminari'
# upload image
gem 'carrierwave'
gem 'mini_magick'
# payment gateway
gem 'stripe'
# cart
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem "font-awesome-rails"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'sassc-rails'
gem 'dartsass-rails'
gem 'cssbundling-rails'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :production do
  gem 'exception_notification'
  gem 'pg'
  gem 'rails_12factor'
  gem 'activerecord-postgresql-adapter'
end
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  # gem 'sqlite3'
  gem "sqlite3", "~> 1.4"
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
