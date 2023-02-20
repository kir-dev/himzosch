source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.4'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
gem 'tailwindcss-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Flexible authentication solution for Rails with Warden (https://github.com/heartcombo/devise)
gem 'devise'

# A common interface to multiple JSON libraries. (https://github.com/intridea/multi_json)
gem 'multi_json'

# Provides CSRF protection on OmniAuth request endpoint on Rails application. (https://github.com/cookpad/omniauth-rails_csrf_protection)
gem 'omniauth-rails_csrf_protection'

# An Auth.sch strategy for OmniAuth 1.x (https://github.com/kiskoza/omniauth-authsch)
gem 'omniauth-authsch'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  # Process manager for applications with multiple components (http://github.com/ddollar/foreman)
  gem 'foreman'

  # Gives letter_opener an interface for browsing sent emails (https://github.com/fgrehm/letter_opener_web)
  gem 'letter_opener_web', '~> 2.0'

  # Automatic Ruby code style checking tool. (https://github.com/rubocop/rubocop)
  gem 'rubocop', require: false

  # Automatic Rails code style checking tool. (https://github.com/rubocop/rubocop-rails)
  gem 'rubocop-rails', require: false
end

group :development do
  # Autoload dotenv in Rails. (https://github.com/bkeepers/dotenv)
  gem 'dotenv-rails', require: 'dotenv/rails-now'
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Annotates Rails Models, routes, fixtures, and others based on the database schema. (https://github.com/ctran/annotate_models)
  gem 'annotate'

  # Automatically reload Hotwire Turbo when app files are modified. (https://github.com/kirillplatonov/hotwire-livereload)
  gem 'hotwire-livereload', '~> 1.2'
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  # Ruby fast debugger - base + CLI (https://github.com/deivid-rodriguez/byebug)
  gem 'byebug'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  # Selenium is a browser automation tool for automated testing of webapps and more (https://selenium.dev)
  gem 'selenium-webdriver'
  # Easy download and use of browser drivers. (https://github.com/titusfortner/webdrivers)
  gem 'webdrivers'
end
