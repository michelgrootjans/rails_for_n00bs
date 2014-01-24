source 'https://rubygems.org'

gem 'rails', '4.0.1'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'simple_form'

gem 'activeadmin', git: 'https://github.com/gregbell/active_admin.git'

group :doc do
  gem 'sdoc', require: false
end

group :test do
  gem 'rspec'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'autotest-standalone'
  gem 'autotest-growl'
end

# rspec-rails needs to be in the development group so that Rails generators work.
group :development, :test do
  gem 'rspec-rails'
end

group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
end
