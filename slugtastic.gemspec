# -*- encoding: utf-8 -*-
require File.expand_path('../lib/slugtastic/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Barber"]
  gem.email         = ["danbee@gmail.com"]
  gem.description   = %q{A simple slug string generator for ActiveRecord. Will populate a slug attribute from another attribute.}
  gem.summary       = %q{A simple slug string generator for ActiveRecord.}
  gem.homepage      = "http://danbarber.me/slugtastic"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "slugtastic"
  gem.require_paths = ["lib"]
  gem.version       = Slugtastic::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "supermodel"
end
