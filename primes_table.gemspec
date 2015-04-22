# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primes_table/version'

Gem::Specification.new do |spec|
  spec.name          = 'primes-table'
  spec.version       = PrimesTable::VERSION
  spec.authors       = ['Lawrance Shepstone']
  spec.email         = ['lawrance.shepstone@gmail.com']

  spec.summary       = 'primes-table'
  spec.description   = 'Print a primes multiplication table of varying size from the command line!'
  spec.homepage      = 'https://github.com/lshepstone/primes-table'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rspec', '~> 3.2'
end
