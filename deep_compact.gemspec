# frozen_string_literal: true

require_relative 'lib/deep_compact/version'

Gem::Specification.new do |spec|
  spec.name          = 'deep_compact'
  spec.version       = DeepCompact::VERSION
  spec.authors       = ['epaew']
  spec.email         = ['epaew.333@gmail.com']

  spec.summary       = 'Define `Array#deep_compact` and `Hash#deep_compact` which apply `#compact` recursively.'
  spec.description   = spec.summary
  spec.homepage      = 'https://epaew.github.io/deep_compact'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/epaew/deep_compact.rb'
  spec.metadata['changelog_uri'] = 'https://github.com/epaew/deep_compact.rb/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']
end
