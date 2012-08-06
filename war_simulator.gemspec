# -*- encoding: utf-8 -*-
require File.expand_path('../lib/war_simulator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Phil Bottomley"]
  gem.email         = ["philbottomley1@gmail.com"]
  gem.description   = %q{Simulator for the War card game.}
  gem.summary       = %q{Simulator for the War card game that outputs the number of rounds until a player wins.}
  gem.homepage      = "https://github.com/philbott/war_simulator"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "war_simulator"
  gem.require_paths = ["lib"]
  gem.version       = WarSimulator::VERSION

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.11'
  gem.add_development_dependency 'simplecov', '~> 0.6'
end
