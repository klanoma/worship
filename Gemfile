source 'http://rubygems.org'

gem "rake"
gem "rails", "3.1.3"
group :assets do
  gem "sass-rails",   "~> 3.1.5"
  gem "coffee-rails", "~> 3.1.1"
  gem "uglifier", ">= 1.0.3"
end
gem "mysql2"
gem "haml", ">= 3.1.2"
gem "haml-rails", ">= 0.3.4", :group => :development
gem "devise", ">= 1.5.0"
gem "jquery-rails"
gem "capistrano"
gem "cancan"

# RSpec
group :development, :test do
#  gem 'rspec-rails', '~> 2.8.0'
# gem 'capybara',    '~> 1.1.2'
  gem 'capybara-webkit' # Need to do this first: `brew install qt` - Install Homebrew first if you don't have that
  gem 'launchy',     '~> 2.0.5'
  gem "cucumber-rails", "~> 1.2.1"
  gem 'spork', '~> 0.9.0.rc9'
end
