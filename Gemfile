source "https://rubygems.org"

gem "rails", "~> 8.0.1"
gem "propshaft"

gem "pg", "~> 1.1" # Use PostgreSQL as the database
gem "redis", "~> 4.2" # Use Redis as the cache store
gem "puma", ">= 5.0" # Use Puma as the app server
gem "importmap-rails" # Use importmap to manage JavaScript dependencies
gem "turbo-rails" # Hotwire Turbo
gem "stimulus-rails" # Use the Stimulus JavaScript framework with Rails
gem "jbuilder" # Build JSON APIs with ease
gem "bcrypt", "~> 3.1.7" # Use ActiveModel has_secure_password
gem "tzinfo-data", platforms: %i[ windows jruby ] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "solid_cache" # Cache with Redis
gem "solid_queue" # Queue with Redis
gem "solid_cable" # ActionCable with Redis
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false



group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem 'rspec-rails', '~> 6.0'
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
