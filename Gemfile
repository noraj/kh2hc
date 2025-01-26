# frozen_string_literal: true

source 'https://rubygems.org'

group :runtime do
  gem 'base64' # temporary fix for ctf-party on ruby 3.4 until new release
  gem 'ctf-party', '~> 3.0'
end

group :runtime, :cli do
  gem 'docopt', '~> 0.6' # for argument parsing
end

group :development, :test do
  gem 'minitest', '~> 5.24'
  gem 'rake', '~> 13.2'
end

group :development, :lint do
  gem 'rubocop', '~> 1.64'
end

group :development, :docs do
  gem 'commonmarker', '~> 2.0' # for markdown support in YARD
  # gem 'yard', ['>= 0.9.27', '< 0.10']
  # https://github.com/lsegal/yard/issues/1528
  gem 'yard', github: 'ParadoxV5/yard', ref: '9e869c940859570b07b81c5eadd6070e76f6291e', branch: 'commonmarker-1.0'
  gem 'yard-coderay', '~> 0.1' # for syntax highlight support in YARD
end
