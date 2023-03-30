# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

gem 'devise', '~> 4.9.0'
gem 'pg', '~> 1.4.6'
gem 'puma', '~> 6.1.1'
gem 'rails', '7.0.4.3'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'vite_rails'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry'
end

group :development do
  gem 'dockerfile-rails', '>= 1.2'
  gem 'letter_opener', '~> 1.8.1'
  gem 'rubocop-rails', require: false
end
