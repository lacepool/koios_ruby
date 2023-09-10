# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'koios_ruby/version'

Gem::Specification.new do |spec|
  spec.authors = ['Robin Böning']
  spec.description = 'Ruby client for the koios API'
  spec.email = ['robin.boening@gmail.com']
  spec.files = %w[LICENSE.txt README.md Rakefile koios_ruby.gemspec]
  spec.files += Dir.glob('lib/**/*.rb')
  spec.homepage = 'https://github.com/lacepool/koios.rb'
  spec.licenses = ['MIT']
  spec.name = 'koios-ruby'
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7.0'
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary = 'Ruby client for the koios API'
  spec.version = KoiosRuby::VERSION.dup
  spec.metadata = { 'rubygems_mfa_required' => 'true' }
end