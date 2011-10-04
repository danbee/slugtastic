require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('slugtastic', '0.1.0') do |p|
  p.description    = "Generate a slug string from another field."
  p.url            = "http://github.com/danbee/slugtastic"
  p.author         = "Dan Barber"
  p.email          = "danbee@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }