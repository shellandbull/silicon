# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in silicon.gemspec
gemspec

gem "irb"
gem "rake", "~> 13.0"
gem "activesupport"
gem "faraday"
gem "rspec", "~> 3.0"
gem "activemodel"

group :test do
  gem "webmock"
  gem "vcr"
end

group :development, :test do
   gem "guard-rspec", require: false
end
