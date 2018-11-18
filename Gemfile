source 'http://rubygems.org'

ruby '2.2.0'
# Distribute your app as a gem
# gemspec

# Server requirements
gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'slim'
gem 'erubis', '~> 2.7.0'
gem 'dm-validations'
gem 'dm-timestamps'
gem 'dm-migrations'
gem 'dm-constraints'
gem 'dm-aggregates'
gem 'dm-types'
gem 'dm-core'
gem 'dm-ar-finders'
gem 'dm-sqlite-adapter'
gem 'therubyracer'
gem 'padrino-sprockets', :require => "padrino/sprockets"
gem 'uglifier', '2.1.1'
gem 'yui-compressor', '0.9.6'
gem 'bcrypt-ruby', :require => 'bcrypt'
gem 'json'
gem 'clockwork'
gem 'twitter'
gem 'dm-postgres-adapter'

# Padrino Stable Gem
gem 'padrino', '0.11.2'

#reCaptcha
gem 'recaptcha','4.9.0', :require => 'recaptcha/rails'

group :development, :test, :ci do
  gem 'cucumber'
  gem 'capybara'
  gem 'rspec_junit_formatter'
  gem 'rspec'
  gem 'simplecov', "0.8.0.pre"
  gem 'rack-test', :require => 'rack/test'
  gem 'rubocop'
end

group :development do
  gem 'guard'   
  gem 'guard-rspec'
  gem 'byebug'
end
