# -*- encoding: utf-8 -*-

require File.expand_path("lib/slugtastic/version", __dir__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Barber"]
  gem.email         = ["danbee@gmail.com"]
  gem.licenses      = ["MIT"]
  gem.description   = "A simple slug string generator for ActiveRecord. " \
                      "Will populate a slug attribute from another attribute."
  gem.summary       = "A simple slug string generator for ActiveRecord."
  gem.homepage      = "http://danbarber.me/slugtastic"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "slugtastic"
  gem.require_paths = ["lib"]
  gem.version       = Slugtastic::VERSION

  gem.add_development_dependency "activemodel", "~> 5"
  gem.add_development_dependency "rake", "~> 12.3"
  gem.add_development_dependency "rspec", "~> 3.7"
end
