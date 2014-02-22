source 'https://rubygems.org'
#ruby-gemset=railstutorial_rails_4_0
ruby '1.9.3'
gem 'rails', "4.0.0"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.

group :development do
  gem 'sqlite3'
  gem 'rspec-rails'
end

gem 'heroku'
gem 'guard-rspec'
gem 'wdm'

group :test do
	gem 'selenium-webdriver'
	gem 'capybara'
	gem 'spork-rails'
	gem 'guard-spork'
	gem 'childprocess'
end

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'bootstrap-sass'
gem 'formtastic-bootstrap'

group :doc do
	gem 'sdoc', '0.3.20', require: false
end

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
group :production do
	gem 'rails_12factor', '0.0.2'
  gem 'pg'
end