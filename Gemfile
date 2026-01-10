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
  gem 'commonmarker', '~> 2.6', '>= 2.6.1' # for markdown support in YARD
  gem 'irb' # https://github.com/lsegal/yard/issues/1636
  gem 'logger' # https://github.com/lsegal/yard/issues/1636
  gem 'ostruct' # https://github.com/lsegal/yard/issues/1636
  # gem 'yard', ['>= 0.9.27', '< 0.10']
  # https://github.com/lsegal/yard/issues/1528
  gem 'yard', github: 'ParadoxV5/yard', ref: '9e869c940859570b07b81c5eadd6070e76f6291e', branch: 'commonmarker-1.0'
  gem 'yard-coderay', '~> 0.1' # for syntax highlight support in YARD
end
