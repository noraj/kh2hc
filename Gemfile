# frozen_string_literal: true

source 'https://rubygems.org'

group :runtime do
  gem 'ctf-party', '~> 5.0'
end

group :runtime, :cli do
  gem 'docopt', '~> 0.6' # for argument parsing
end

group :development, :test do
  gem 'minitest', '~> 6.0'
  gem 'rake', '~> 13.2'
end

group :development, :lint do
  gem 'rubocop', '~> 1.64'
end

group :development, :docs do
  gem 'commonmarker', '~> 2.8' # for markdown support in YARD
  gem 'yard', ['>= 0.9.43', '< 0.10']
  gem 'yard-coderay', '~> 0.1' # for syntax highlight support in YARD
end
