source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'devise'
gem 'bootstrap', '~> 4.1.1'
gem 'jquery-rails'
gem 'faker'
gem 'simple_form'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem "hashid-rails", "~> 1.0"
gem 'active_decorator'
gem 'stripe'
gem 'dotenv-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~>1.3.6'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'rspec-rails', '~> 3.6.0'
  gem 'factory_bot_rails', "~> 4.10.0"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
  gem 'rubocop-airbnb'
end

group :production do
  gem 'pg'
  gem 'fog'
end

group :test do
  gem 'capybara', '~> 2.15.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
