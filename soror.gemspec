# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soror/version'

Gem::Specification.new do |spec|
  spec.name          = "soror"
  spec.version       = Soror::VERSION
  spec.authors       = ["kirikiriyamama"]
  spec.email         = ["kirikiriyamama@icloud.com"]
  spec.summary       = %q{Soror is EC2 instances seacher}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/kirikiriyamama/soror"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "aws-sdk-v1"
end
