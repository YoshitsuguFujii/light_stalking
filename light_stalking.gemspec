# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'light_stalking/version'

Gem::Specification.new do |spec|
  spec.name          = "light_stalking"
  spec.version       = LightStalking::VERSION
  spec.authors       = ["y.fujii"]
  spec.email         = ["ishikurasakura@gmail.com"]
  spec.description   = %q{遷移前のcontroller名とaction名を保持する}
  spec.summary       = %q{履歴管理用のGem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rails'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-rails'
end
