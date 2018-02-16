source 'https://rubygems.org'
ruby '2.5.0'

gem 'haml', '~> 5.0.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', '~> 0.51.0', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 2.18.0'
  gem 'database_rewinder', '~> 0.8.3'
  gem 'factory_bot', '~> 4.8.2'
  gem 'shoulda-matchers', git: 'https://github.com/thoughtbot/shoulda-matchers.git',
    branch: 'rails-5'
end

group :development, :test do
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'rspec-rails', '~> 3.7'
end
