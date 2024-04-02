# frozen_string_literal: true

source 'https://rubygems.org'

group :runtime do
  gem 'ctf-party', '~> 3.0'
end

group :runtime, :cli do
  gem 'docopt', '~> 0.6' # for argument parsing
end

group :development, :test do
  gem 'minitest', '~> 5.22'
  gem 'rake', '~> 13.2'
end

group :development, :lint do
  gem 'rubocop', '~> 1.62'
end

group :development, :docs do
  gem 'commonmarker', '~> 0.23' # for markdown support in YARD
  gem 'yard', ['>= 0.9.27', '< 0.10']
  gem 'yard-coderay', '~> 0.1' # for syntax highlight support in YARD
end
