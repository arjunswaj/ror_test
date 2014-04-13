# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awesome_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "awesome_gem"
  spec.version       = AwesomeGem::VERSION
  spec.authors       = ["Arjun S Bharadwaj"]
  spec.email         = ["arjun.s.waj@gmail.com"]
  spec.summary       = %q{My Awesome Gem.}
  spec.description   = %q{This is my Super Awesome Gem.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
