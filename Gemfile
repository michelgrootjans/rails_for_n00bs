source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'sqlite3'
gem 'simple_form'
gem 'jquery-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test do
  gem 'rspec'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'autotest-standalone'
  gem 'autotest-growl'
end

# rspec-rails needs to be in the development group so that Rails generators work.
group :development, :test do
  gem 'rspec-rails'
  gem 'faker'
end

group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
end