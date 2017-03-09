source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "devise"
gem "font-awesome-rails"
gem "simple_form"
gem "rails_admin"
gem "autoprefixer-rails"
gem "paperclip", git: "https://github.com/thoughtbot/paperclip", ref: "523bd46c768226893f23889079a7aa9c73b57d68"
gem "geocoder"
gem "gmaps4rails"
gem "fancybox2-rails"
gem 'rails_12factor', group: :production

group :development, :test do
  gem 'byebug', platform: :mri
end

source "https://rails-assets.org" do
  gem "rails-assets-flexboxgrid"
  gem "rails-assets-material-design-lite"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
