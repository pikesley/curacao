# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'curacao/version'

Gem::Specification.new do |spec|
  spec.name          = 'curacao'
  spec.version       = Curacao::VERSION
  spec.authors       = ['pikesley']
  spec.email         = ['github@orgraphone.org']

  spec.summary       = 'Rspec extensions'
  spec.description   = 'Rspec extensions'
  spec.homepage      = 'http://github.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'coveralls', '~> 0.8'
end
