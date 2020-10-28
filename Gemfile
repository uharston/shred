source 'http://rubygems.org'
ruby '2.6.6'
gem 'sinatra'
gem 'rack-flash3'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all' 
gem 'pg', '0.20', :group => :production
gem 'thin'
gem 'dotenv'
gem 'bcrypt'


group :development do
  gem 'tux'
  gem 'pry'
  gem 'shotgun'
  gem 'sqlite3', '~> 1.3.6'

  # gem 'sqlite3'
end 

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end


