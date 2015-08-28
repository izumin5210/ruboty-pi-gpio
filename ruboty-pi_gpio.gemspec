# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/pi_gpio/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-pi_gpio"
  spec.version       = Ruboty::PiGpio::VERSION
  spec.authors       = ["izumin5210"]
  spec.email         = ["masayuki@izumin.info"]

  spec.summary       = "Control GPIO of Raspberry PI via Ruboty"
  spec.homepage      = "https://github.com/izumin5210/ruboty-pi_gpio"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
