source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'
#gem "sorcery"
gem "haml"
gem "haml-rails"
gem "devise"
gem "hpricot"
gem "ruby_parser"
gem "cancan"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do
 gem 'mongrel', '>= 1.2.0.pre2'
#gem 'annotate', '2.4.1.beta1'
gem 'annotate', 
:git => 'git://github.com/jeremyolliver/annotate_models.git', :branch => 'rake_compatibility'
end

group :development, :test do
  gem "rspec"
  gem "rspec-rails"
  gem "database_cleaner"
  gem 'machinist', '>= 2.0.0.beta2'
  gem "ZenTest"
  gem 'factory_girl_rails'
  gem 'faker'
end
group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
