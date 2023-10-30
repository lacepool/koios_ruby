# frozen_string_literal: true

require_relative 'lib/koios_ruby/version'

Gem::Specification.new do |spec|
  spec.add_dependency 'faraday', '>= 1', '< 3'
  spec.add_dependency 'oj', '~> 3.1'

  spec.authors = ['Robin Böning']
  spec.description = 'Ruby client for the koios API'
  spec.email = ['robin.boening@gmail.com']
  spec.files = %w[LICENSE.txt README.md Rakefile koios_ruby.gemspec]
  spec.files += Dir.glob('lib/**/*.rb')
  spec.homepage = 'https://github.com/lacepool/koios.rb'
  spec.licenses = ['MIT']
  spec.name = 'koios_ruby'
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7.0'
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = 'Ruby client for the koios API'
  spec.version = KoiosRuby::VERSION.dup
  spec.metadata = { 'rubygems_mfa_required' => 'true' }
end
