# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version_bomb/version'

Gem::Specification.new do |gem|
  gem.name          = 'version_bomb'
  gem.version       = VersionBomb::VERSION
  gem.authors       = ['Andrew Marshall']
  gem.email         = ['andrew@johnandrewmarshall.com']
  gem.description   = %q{Makes creating flexible version bombs dead simple.}
  gem.summary       = %q{Makes creating flexible version bombs dead simple.}
  gem.homepage      = 'http://johnandrewmarshall.com/projects/version_bomb'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
