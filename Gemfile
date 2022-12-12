# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

group :development, :test do
  gem 'awesome_print', '~> 1.9'
  gem 'debug', '~> 1.7'
  gem 'rspec'
end

group :development do
  gem 'bundler-audit', '~> 0.9.1', require: false
  gem 'bundler-leak', '~> 0.3.0', require: false
  gem 'git-lint', '~> 4.6', require: false
  gem 'rubocop', '~> 1.39', require: false
  gem 'rubocop-faker', '~> 1.1', require: false
  gem 'rubocop-performance', '~> 1.15', require: false
  gem 'rubocop-rake', '~> 0.6.0', require: false
  gem 'rubocop-rspec', '~> 2.15', require: false
  gem 'rubocop-thread_safety', '~> 0.4.4', require: false
end

group :test do
  gem 'reek', '~> 6.1', require: false
  gem 'simplecov', '~> 0.21.2', require: false
  gem 'webmock', '~> 3.18', require: false
end
