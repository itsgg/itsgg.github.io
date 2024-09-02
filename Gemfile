# frozen_string_literal: true

source 'https://rubygems.org'

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!

gem 'github-pages'
gem 'jekyll'
gem 'minima'
gem 'rubocop'
gem 'solargraph'
gem 'webrick'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-compose'
  gem 'jekyll-feed'
  gem 'jekyll-paginate'
  gem 'jekyll-relative-links'
  gem 'jekyll-remote-theme'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ /mingw|mswin|java/ } do
  gem 'tzinfo'
  gem 'tzinfo-data'
end

# Performance-booster for watching directories on Windows
gem 'wdm', install_if: Gem.win_platform?

# kramdown v2 ships without the gfm parser by default. If you're using
# kramdown v1, comment out this line.
gem 'kramdown-parser-gfm'
