# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{slugtastic}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Dan Barber}]
  s.date = %q{2011-10-08}
  s.description = %q{A simple slug string generator for ActiveRecord. Will populate a slug attribute from another attribute.}
  s.email = %q{danbee@gmail.com}
  s.extra_rdoc_files = [%q{README.md}, %q{lib/slugtastic.rb}]
  s.files = [%q{Manifest}, %q{README.md}, %q{Rakefile}, %q{lib/slugtastic.rb}, %q{slugtastic.gemspec}]
  s.homepage = %q{http://github.com/danbee/slugtastic}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Slugtastic}, %q{--main}, %q{README.md}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{slugtastic}
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{A simple slug string generator for ActiveRecord. Will populate a slug attribute from another attribute.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
