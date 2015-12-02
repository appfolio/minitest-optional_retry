# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/optional_retry/version'

Gem::Specification.new do |s|
  s.name          = 'minitest-optional_retry'
  s.version       = Minitest::OptionalRetry::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['AppFolio']
  s.email         = 'dev@appfolio.com'
  s.description   = 'Rerun failing minitest tests.'
  s.summary       = s.description
  s.homepage      = 'http://github.com/appfolio/minitest-optional_retry'
  s.licenses      = ['MIT']

  s.files         = Dir['**/*'].reject{ |f| f[%r{^pkg/}] || f[%r{^test/}] }
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.add_dependency('minitest', ['~> 5.0'])
end
