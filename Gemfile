source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

ENV["EDGE_QOR"] = 'true'
QOR_PATH = './vendor/qor'
qor_source_url = if File.exist?(QOR_PATH)
  {:path => QOR_PATH}
else
  if ENV["QOR_ROOT"].to_s.length > 0
    `ln -s #{ENV["QOR_ROOT"]} #{QOR_PATH}`
    {:path => QOR_PATH}
  else
    {:git => "git@github.com:theplant/qor.git", :branch => "develop"}
  end
end

gem 'kaminari', :git => 'git://github.com/amatsuda/kaminari.git'

# Qor Components
%w[qor qor_exchange qor_job ].each{|component| gem component, qor_source_url.dup}
gem 'rchardet', :git => 'git://github.com/theplant/rchardet.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end
