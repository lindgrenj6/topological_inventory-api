source 'https://rubygems.org'

plugin "bundler-inject", "~> 1.1"
require File.join(Bundler::Plugin.index.load_paths("bundler-inject")[0], "bundler-inject") rescue nil

gem 'graphql',            '~> 1.7'
gem 'graphql-batch',      '~> 0.3.8'
gem 'graphql-preload',    '~> 1.0'
gem 'jbuilder',           '~> 2.0'
gem 'json-schema',        '~> 2.8'
gem 'manageiq-loggers',   '~> 0.1'
gem 'manageiq-messaging', '~> 0.1.2', :require => false
gem 'manageiq-password',  '~> 0.2', ">= 0.2.1"
gem 'mimemagic',          '~> 0.3.3'
gem 'more_core_extensions'
gem 'pg',                 '~> 1.0', :require => false
gem 'puma',               '~> 3.0'
gem 'rack-cors',          '>= 0.4.1'
gem 'rails',              '>= 5.2.2.1', '~> 5.2.2'

gem 'inventory_refresh', :git => 'https://github.com/ManageIQ/inventory_refresh', :branch => 'master'
gem 'manageiq-api-common', :git => 'https://github.com/ManageIQ/manageiq-api-common', :branch => 'master'
gem 'topological_inventory-core', :git => 'https://github.com/ManageIQ/topological_inventory-core', :branch => 'master'

group :development, :test do
  gem 'simplecov'
end

group :test do
  gem 'rspec-rails', '~>3.8'
end
