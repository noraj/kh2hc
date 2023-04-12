# frozen_string_literal: true

require_relative 'lib/kh2hc/version'

Gem::Specification.new do |s|
  s.name          = 'kh2hc'
  s.version       = Kh2hc::VERSION
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Convert OpenSSH known_hosts file hashed with HashKnownHosts to hashes crackable by Hashcat.'
  s.description   = 'Convert OpenSSH known_hosts file hashed with HashKnownHosts to hashes crackable by Hashcat.'
  s.authors       = ['Alexandre ZANNI']
  s.email         = 'alexandre.zanni@europe.com'
  s.homepage      = 'https://noraj.github.io/kh2hc/'
  s.license       = 'MIT'
  s.files         = Dir['lib/**/*.rb'] + Dir['bin/*'] + ['LICENSE']
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.metadata = {
    'yard.run'              => 'yard',
    'bug_tracker_uri'       => 'https://github.com/noraj/kh2hc/issues',
    'changelog_uri'         => 'https://github.com/noraj/kh2hc/blob/master/docs/CHANGELOG.md',
    'documentation_uri'     => 'https://noraj.github.io/kh2hc/',
    'homepage_uri'          => 'https://noraj.github.io/kh2hc/',
    'source_code_uri'       => 'https://github.com/noraj/kh2hc/',
    'rubygems_mfa_required' => 'true'
  }

  s.required_ruby_version = ['>= 3.0.0', '< 4.0']

  s.add_runtime_dependency('ctf-party', '~> 2.3')
  s.add_runtime_dependency('docopt', '~> 0.6')
end
