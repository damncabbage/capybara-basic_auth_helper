# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara/basic_auth_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "capybara-basic_auth_helper"
  spec.version       = Capybara::BasicAuthHelper::VERSION
  spec.authors       = ["Rob Howard"]
  spec.email         = ["rob@robhoward.id.au"]
  spec.description   = %q{Provides basic_auth(username, password) for Capybara specs.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/damncabbage/capybara-basic_auth_helper"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.0"
end
