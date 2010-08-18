source 'http://rubygems.org'

gem 'rails', '3.0.0.rc'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# gem "mongoid", "2.0.0.beta.15"
gem "mongoid", :git => "http://github.com/durran/mongoid.git"
gem "bson_ext"


# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri', '1.4.1'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :test do
  gem "cucumber-rails"
  gem 'rspec-rails'
  gem "database_cleaner"
  gem "remarkable_mongoid"
  gem "faker"
  gem "capybara"
  gem "launchy"
end

group :development, :test do
  gem 'ruby-debug'
  gem "mongrel"
end