# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'browserio'

Gem::Specification.new do |spec|
  spec.name          = "browserio"
  spec.version       = BrowserIO::VERSION
  spec.authors       = ["cj"]
  spec.email         = ["cjlazell@gmail.com"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "roda", ">= 1.0.0"
  spec.add_dependency "clap", ">= 1.0.0"
  spec.add_dependency "rerun", ">= 1.1.1"
  spec.add_dependency "thin", ">= 1.6.2"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
