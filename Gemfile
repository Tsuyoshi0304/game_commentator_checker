source "https://rubygems.org"
git_source(:github) {|repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem "rails", "6.1.4.4"
# Use mysql as the database for Active Record

# Use Puma as the app server
gem "puma", "~> 4.1"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 4.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

gem "ancestry"
gem "aws-sdk"
gem "aws-sdk-s3", require: false
gem "bootstrap"
gem "carrierwave"
gem "chartkick", "~> 3.0", ">= 3.0.1"
gem 'config'
gem "dotenv-rails"
gem "enum_help"
gem "font-awesome-rails"
gem "jquery-rails"
gem "kaminari"
gem "pg", "1.1"
gem "pry-rails"
gem "rails-i18n"
gem "ransack"
gem "rmagick"
gem "seed-fu"
gem "sitemap_generator"
gem "sorcery"
gem "whenever"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "better_errors"
  gem "binding_of_caller"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem 'letter_opener_web'
  gem "onkcop"
  gem "pre-commit"
  gem "rails_best_practices"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rails"

  # gem 'google-api-client', '0.7', require: 'google/api_client'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "listen", "~> 3.2"
  gem "web-console", ">= 3.3.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara"
  gem "rspec-rails"
end

group :production do
  gem "fog-aws"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
