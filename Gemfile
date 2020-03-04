source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.2'

gem 'rails', '~> 5.2.3'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'

gem "i18n", "~> 1.6"

gem "jquery-rails", "~> 4.3"

gem "aasm", "~> 5.0"

gem "lodash-rails", "~> 4.17"
gem "local_time", "~> 2.1"

gem "devise", "~> 4.7"
gem "devise_invitable", "~> 2.0"
gem "rolify", "~> 5.2"
gem "cancancan", "~> 3.0"

gem "paper_trail", "~> 10.3"
gem "bootstrap-sass", "~> 3.4"
gem "friendly_id", "~> 5.2"
gem "slim-rails", "~> 3.2"
gem "sidekiq", "~> 5.2"
gem "sinatra", github: "sinatra/sinatra", require: nil

gem "gravatar_image_tag", "~> 1.2"
gem "country_select", "~> 4.0"
gem "kaminari", "~> 1.1"
gem "money-rails", "~> 1.13"
gem "ransack", "~> 2.3"
gem "slack-notifier", "~> 2.3"
gem "premailer-rails", "~> 1.10"
gem "griddler", "~> 1.5"
gem "griddler-mailgun", "~> 1.1"
gem "rollbar", "~> 2.22"

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails", "~> 3.8"
  gem 'rails-controller-testing'
  gem 'faker'
end

gem "simplecov", :require => false, :group => :test
gem "factory_bot_rails", "~> 5.0"

group :development do
  gem "letter_opener"
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "capybara"
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "rack-cors", :require => 'rack/cors'
